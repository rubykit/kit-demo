module KitDemo::Main::Services::Routing

  def self.mount_routes_http_web(context:, rails_endpoint_wrapper:)
    list_web = [
      { id: 'web|home', path: '/', verb: :get, namespace: [:landings] },
    ]

    list_web.each do |entry|
      entry.merge!({
        rails_endpoint_wrapper: [rails_endpoint_wrapper, :route],
        namespace:              [:as_main, :web].concat(entry[:namespace] || []),
      })
    end

    Kit::Router::Services::Adapters::Http::Rails::Routes.mount_http_targets(rails_router_context: context, list: list_web)
  end

end
