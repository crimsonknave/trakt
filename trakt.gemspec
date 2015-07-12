# -*- encoding: utf-8 -*-
$LOAD_PATH.push File.expand_path('../lib', __FILE__)
require 'trakt/version'

Gem::Specification.new do |s|
  s.name = 'trakt'
  s.version = Trakt::VERSION

  s.authors = ['Joseph Henrich']
  s.email = ['crimsonknave@gmail.com']
  s.homepage = 'http://github.com/crimsonknave/trakt'
  s.summary = 'Wrapper around the trakt api'
  s.description = 'Wrapper around the trakt api'
  s.license = 'MIT'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
  s.require_paths = ['lib']

  s.add_dependency 'activesupport'
  s.add_dependency 'faraday'
  s.add_dependency 'faraday_middleware'
  s.add_dependency 'cot'

  s.add_development_dependency 'rake'
  s.add_development_dependency 'shoulda', '>= 0'
  s.add_development_dependency 'bundler', '>= 1.0.0'
  s.add_development_dependency 'rspec', '>= 0'
  s.add_development_dependency 'rspec-its', '>= 1'
  s.add_development_dependency 'rubocop'
  s.add_development_dependency 'simplecov', '>= 0'
  s.add_development_dependency 'mutant'
  s.add_development_dependency 'mutant-rspec'
end
