Rails.application.routes.draw do

  Kit::Router::Services::Router.finalize_endpoints

  mount KitDemo::Main::Engine, at: '/'

  args = {
    context:                self,
    rails_endpoint_wrapper: ::WebController,
  }

  KitDemo::Main::Services::Routing.mount_routes_http_web(**args)

end
