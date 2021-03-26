lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

require 'edmunds/version'

Gem::Specification.new do |spec|
  spec.name          = 'edmunds_api'
  spec.version       = Edmunds::VERSION
  spec.authors       = ['Alexander Belyaev']
  spec.email         = ['alex@webstreak.com']

  spec.summary       = 'Edmunds Api ruby client'
  spec.description   = ''
  spec.homepage      = 'https://github.com/webstreak/edmunds-api-ruby'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.require_paths = ['lib']

  spec.required_ruby_version = '>= 2.0'

  spec.add_dependency 'http', '~> 2.0'
  spec.add_dependency 'configurations', '~> 2.2'

  spec.add_development_dependency 'bundler', '> 1'
  spec.add_development_dependency 'rake', '~> 12.3'
  spec.add_development_dependency 'rspec', '~> 3.5'
  spec.add_development_dependency 'webmock', '~> 2.1'
end
