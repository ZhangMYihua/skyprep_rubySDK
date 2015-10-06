# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'skyprep_rubySDK/version'

Gem::Specification.new do |spec|
  spec.name          = "skyprep_rubySDK"
  spec.version       = SkyprepRubySDK::VERSION
  spec.authors       = ["Yihua Zhang"]
  spec.email         = ["michaelzhang2@msn.com"]

  spec.summary       = %q{Ruby Wrapper for skyprep api.}
  spec.description   = %q{Converts JSON return from Skypreps API to ruby hash.}
  spec.homepage      = "https://github.com/ZhangMYihua/skyprep_rubySDK"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  # if spec.respond_to?(:metadata)
  #   spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  # else
  #   raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  # end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_dependency "faraday"
  spec.add_dependency "json"
end
