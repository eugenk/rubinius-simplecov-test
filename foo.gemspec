# frozen_string_literal: true

$LOAD_PATH.push File.expand_path('../lib', __FILE__)

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name          = 'foo'
  s.version       = '1'
  s.authors       = ['Foos']
  s.email         = ['foo@foo.foo']
  s.summary       = 'Foo'
  s.description   = 'Foo'
  s.homepage      = 'https://foo.foo'
  s.license       = 'Foo'

  s.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|s|features)/})
  end
  s.test_files = Dir['spec/**/*']

  # Prevent pushing this gem to RubyGems.org.
  unless s.respond_to?(:metadata)
    raise "We don't want to publish this outside of the Foo project."
  end

  # General Development
  s.add_development_dependency 'bundler', '~> 1.11'

  # Testing
  s.add_development_dependency 'rspec', '~> 3.5.0'

  # CI services
  s.add_development_dependency 'simplecov', '~> 0.12.0'
end
