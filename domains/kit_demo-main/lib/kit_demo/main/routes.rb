# Routes helper for `KitDemo::Main`
module KitDemo::Main::Routes

  # NOTE: The indirection is needed somehow for a thread safety thing.
  #   Otherwise we get a `url_options` issue.
  module UrlHelpers
    include KitDemo::Main::Engine.routes.url_helpers
  end

  extend UrlHelpers

  def self.default_url_options
    KitDemo::Main::Engine.routes.default_url_options || {}
  end

end
