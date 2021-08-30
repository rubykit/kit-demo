require_relative 'dependencies'

# Rails engine for `KitDemo::Main` domain.
class KitDemo::Main::Engine < ::Rails::Engine

  ::Kit::Engine.config_engine(
    context:   self,
    namespace: KitDemo::Main,
    file:      __FILE__,
  )

  ::Kit::Domain.config_domain(
    context:   self,
    namespace: KitDemo::Main,
    file:      __FILE__,
  )

end
