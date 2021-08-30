module KitDemo::Main::Components::Pages
  class PageComponent < KitDemo::Main::Components::Component

    attr_reader :csrf_token

    def initialize(csrf_token: nil, **)
      super

      @csrf_token = csrf_token
    end

  end
end
