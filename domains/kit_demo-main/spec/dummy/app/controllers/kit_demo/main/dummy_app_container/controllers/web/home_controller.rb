class KitDemo::Main::DummyAppContainer::Controllers::Web::HomeController < KitDemo::Main::DummyAppContainer::Controllers::WebController

  Kit::Router::Services::Router.register_without_target(
    uid:     'kit-demo|main|spec_app|home',
    aliases: ['app|home'],
    types:   {
      [:http, :rails] => {
        target: [self, :index],
      },
    },
  )

  def index
    render
  end

end
