lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'actionmailer_test_rack/version'

Gem::Specification.new do |spec|
  spec.name          = 'actionmailer_test_rack'
  spec.version       = ActionmailerTestRack::VERSION
  spec.authors       = ['Grant Petersen-Speelman']
  spec.email         = ['grantspeelman@gmail.com']

  spec.summary       = 'Allow to view Actionmailer test deliveries'
  spec.description   = 'Allow to view Actionmailer test deliveries'
  spec.homepage      = 'http://github.com/grantspeelman/actionmailer_test_rack'

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
  spec.add_dependency 'rack'

  spec.add_development_dependency 'bundler', '~> 1.16'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'rubocop', '~> 0.57.2'
end
