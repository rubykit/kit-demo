Rails.application.routes.draw do

  Kit::Router::Services::Router.finalize_endpoints

  args = {
    context:                self,
    rails_endpoint_wrapper: ::WebController,
  }

end
