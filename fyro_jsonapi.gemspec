require_relative 'lib/fyro_jsonapi/version'

Gem::Specification.new do |spec|
  spec.name          = 'fyro_jsonapi'
  spec.version       = FyroJsonapi::VERSION
  spec.authors       = ['Michael Shi']
  spec.email         = ['michael@shi.nz']

  spec.summary       = 'Helpers for rendering JSONAPI resources'
  spec.description   = ''
  spec.homepage      = 'https://fyrolabs.com'
  spec.license       = 'MIT'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.3.0')

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.require_paths = ['lib']

  spec.add_dependency 'jsonapi-serializer'

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'byebug'
  spec.add_development_dependency 'guard'
  spec.add_development_dependency 'guard-rspec'
  spec.add_development_dependency 'rails'
  spec.add_development_dependency 'rspec-rails'
  spec.add_development_dependency 'sqlite3'
end
