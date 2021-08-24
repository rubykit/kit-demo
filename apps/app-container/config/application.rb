require_relative 'boot'

require 'rails'

# NOTE: action_mailbox && action_text depend on active_storage.
railties = [
  'active_record/railtie',
  #'active_storage/engine'
  'action_controller/railtie',
  'action_view/railtie',
  #'action_mailer/railtie',
  'active_job/railtie',
  #'action_cable/engine',
  #'action_mailbox/engine',
  #'action_text/engine',
  'rails/test_unit/railtie',
  'sprockets/railtie',
]

railties.each do |railtie|
  require railtie
end

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module AppContainer # rubocop:disable Style/ClassAndModuleChildren

  # AppContainer Rails Application.
  class Application < Rails::Application

    Kit::AppContainer.config_application(context: self)

  end

end
