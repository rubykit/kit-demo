class KitDemo::Main::Components::BaseComponent < Kit::ViewComponents::Components::BaseComponent

  attr_reader :errors_list

  def initialize(errors_list: nil, **)
    errors_list ||= []

    super

    @errors_list  = errors_list
  end

end
