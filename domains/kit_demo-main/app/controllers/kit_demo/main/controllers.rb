module KitDemo::Main::Controllers

  def self.render_http(router_request:, component:, params: {}, status: nil)
    status ||= 200
    params ||= {}

    component_params = {
      router_request: router_request,
      current_user:   router_request.metadata[:current_user],
      csrf_token:     router_request.http[:csrf_token],
    }.merge(params)

    page     = component.new(**component_params)
    content  = page.local_render(router_request: router_request)

    [:ok, {
      router_response: {
        mime:     :html,
        content:  content,
        metadata: {
          http: {
            status: status,
          },
        },
      },
    },]
  end

end
