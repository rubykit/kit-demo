module KitDemo::Main::Controllers::Web::Landing
  module Home

    def self.endpoint(router_request:)
      Kit::Organizer.call(
        list: [
          self.method(:render_landing),
        ],
        ctx:  { router_request: router_request },
      )
    end

    Kit::Router::Services::Router.register(
      uid:     'kit-demo|main|web|landing|home',
      target:  self.method(:endpoint),
      aliases: ['web|home'],
    )

    def self.render_landing(router_request:)
      KitDemo::Main::Controllers.render_http(
        router_request: router_request,
        component:      KitDemo::Main::Components::Pages::Landing::HomePageComponent,
      )
    end

  end
end
