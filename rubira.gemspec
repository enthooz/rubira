# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rubira/version'

Gem::Specification.new do |spec|
  spec.name          = 'rubira'
  spec.version       = Rubira::VERSION
  spec.authors       = ['Andrew Ashbacher']
  spec.email         = ['andrewashbacher@gmail.com']

  spec.summary       = 'Rubyesque interaction with the JIRA API.'
  spec.homepage      = 'https://github.com/enthooz/rubira'

  spec.files         = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      f.match(%r{^(test|spec|features)/})
    end
  end
  spec.bindir        = 'bin'
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 2.0'
  spec.add_development_dependency 'httparty', '~> 0.16'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
end
