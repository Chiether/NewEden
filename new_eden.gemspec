# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'new_eden/version'

Gem::Specification.new do |spec|
  spec.name          = 'new_eden'
  spec.version       = NewEden::VERSION
  spec.authors       = ['Norikaz Ishii']
  spec.email         = ['chiether+github@gmail.com']

  spec.summary       = 'Interface to the EveOnline API'
  spec.description   = 'Interface to the EveOnline API'
  spec.homepage      = 'https://github.com/Chiether/NewEden'
  spec.license       = 'MIT'

  # spec.required_ruby_version = ''
  # spec.required_rubygems_version = ''

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  # if spec.respond_to?(:metadata)
  #   spec.metadata['allowed_push_host'] = ''
  # else
  #   fail 'RubyGems 2.0 or newer is required to protect against public gem pushes.'
  # end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  # spec.bindir        = 'exe'
  # spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.9'
  spec.add_development_dependency 'rake', '~> 10.0'

  spec.add_dependency 'addressable', '~> 2.3'
  spec.add_dependency 'activesupport', '~> 4.2'
  spec.add_dependency 'hashie', '~> 3.4'
end
