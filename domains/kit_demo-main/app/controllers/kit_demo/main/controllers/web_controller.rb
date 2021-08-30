module KitDemo::Main::Controllers
  # NOTE: This is a little backward: we inherit from the engine container controller in order to display the layout
  class WebController < ::WebController

    protect_from_forgery with: :exception

  end
end
