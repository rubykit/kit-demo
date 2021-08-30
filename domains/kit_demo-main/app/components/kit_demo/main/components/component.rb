class KitDemo::Main::Components::Component < Kit::Domain::Components::Component

  attr_reader :errors_list

  def initialize(errors_list: nil, **)
    errors_list ||= []

    super

    @errors_list  = errors_list
  end

end
