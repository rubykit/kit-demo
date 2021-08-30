list = [

  # WEB ------------------------------------------------------------------------

  'kit_demo/main/controllers/web_controller',

  'kit_demo/main/controllers/web/landing/home',
]

autoloader   = Rails.autoloaders.main
default_path = File.expand_path('../../app/controllers', __dir__)

list.each do |file|
  autoloader.preload("#{ default_path }/#{ file }.rb")
end

# TODO: fire call to the router to signal engine has registered its routes?
