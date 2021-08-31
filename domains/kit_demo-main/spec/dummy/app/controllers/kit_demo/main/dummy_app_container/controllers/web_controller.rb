class KitDemo::Main::DummyAppContainer::Controllers::WebController < ::ActionController::Base

  protect_from_forgery

  if (layout_name = KIT_APP_PATHS['GEM_SPEC_VIEW_LAYOUT'])
    layout layout_name
  end

  if (views_path = KIT_APP_PATHS['GEM_SPEC_VIEWS'])
    prepend_view_path views_path
  end

  def route
    middlewares_in = [
      Kit::Router::Services::Adapters::Http::Rails::Request::Import.method(:import_request),
      ->(router_request:) { Kit::Domain::Middlewares::Meta.call(router_request: router_request, i18n_prefix: 'kit_demo.main') },
      Kit::Domain::Middlewares::JsEnv,
      # Calling the target endpoint:
      ->(router_request:) { router_request.target[:endpoint].call(router_request: router_request) },
    ]

    middlewares_out = [
      Kit::Router::Services::Adapters::Http::Rails::Request::Export.method(:export_request),
    ]

    controller_ctx = {
      rails_request:    self.request,
      rails_cookies:    cookies,
      rails_controller: self,
      rails_response:   self.response,
    }

    _, ctx = Kit::Organizer.call(
      list: middlewares_in,
      ctx:  controller_ctx,
    )

    Kit::Organizer.call(
      list: middlewares_out,
      ctx:  controller_ctx.merge(ctx.slice(:router_request, :router_response)),
    )

    return
  end

end
