$LOAD_PATH.push File.expand_path('lib', __dir__)
require 'kit_demo/main/version'

version = KitDemo::Main::VERSION

Gem::Specification.new do |s|
  s.name        = 'kit_demo-main'
  s.version     = version
  s.summary     = 'KitDemo main domain.'
  s.description = ''
  s.license     = 'MIT'
  s.author      = 'Nathan Appere'
  s.email       = 'nathan@rubykit.org'
  s.homepage    = 'https://github.com/rubykit/kit_demo'

  s.metadata = {
    'source_code_base_uri' => 'https://github.com/rubykit/kit_demo',
    'source_code_uri'      => "https://github.com/rubykit/kit_demo/tree/v#{ version }/domains/kit_demo-main",
    'documentation_uri'    => 'https://github.com/rubykit/kit_demo',
  }

  s.files = Dir['{app,config,db,lib}/**/*', 'Rakefile']

  s.required_ruby_version = '>= 3.0.0'

  s.add_development_dependency 'rubocop'
  s.add_development_dependency 'simplecov', '~> 0.17.1'

end
