module Helpers::Routes

  def route_uid_to_path(route_uid, params: {})
    Kit::Router::Services::Adapters::Http::Mountpoints.path(id: route_uid, params: params)
  end

end
