# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'tweckel/version'

Gem::Specification.new do |spec|
  spec.name          = "tweckel"
  spec.version       = Tweckel::VERSION
  spec.authors       = ["rhysd"]
  spec.email         = ["lin90162@yahoo.co.jp"]
  spec.description   = %q{Twitter Timeline Notifier}
  spec.summary       = %q{This is a notifier for your Twitter timeline. Running as daemon, collect with user stream and make notifications. High configurable with Ruby.}
  spec.homepage      = "https://github.com/rhysd/tweckel"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
