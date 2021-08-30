Rails.application.routes.draw do

  Kit::Router::Services::Router.finalize_endpoints

  rails_endpoint_wrapper = KitDemo::Main::DummyAppContainer::Controllers::WebController

  mount KitDemo::Main::Engine, at: '/'

  args = {
    context:                self,
    rails_endpoint_wrapper: rails_endpoint_wrapper,
  }

  KitDemo::Main::Services::Routing.mount_routes_http_web(**args)

end
