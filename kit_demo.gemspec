# frozen_string_literal: true

version = File.read(File.expand_path('VERSION', __dir__)).strip

Gem::Specification.new do |s|
  s.name        = 'kit_demo'
  s.version     = version
  s.summary     = 'Exemple application using Kit framework.'
  s.description = ''
  s.license     = 'MIT'
  s.author      = 'Nathan Appere'
  s.email       = 'nathan@rubykit.org'
  s.homepage    = 'https://rubykit.org'

  s.metadata = {
    'documentation_uri' => 'https://github.com/rubykit/kit_demo',
    'source_code_uri'   => "https://github.com/rubykit/kit_demo/tree/v#{ version }",
  }

  s.files = ['README.md']

  s.required_ruby_version     = '>= 3.0.0'
  s.required_rubygems_version = '>= 3.0.0'

  s.add_development_dependency 'pry'
  s.add_development_dependency 'rake'
  s.add_development_dependency 'rubocop'
  s.add_development_dependency 'yard'

  s.add_development_dependency 'kit_rubocop_style'

end
