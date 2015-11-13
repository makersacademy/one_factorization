# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'one_factorization/version'

Gem::Specification.new do |spec|
  spec.name          = "one_factorization"
  spec.version       = OneFactorization::VERSION
  spec.authors       = ["Sam Joseph", "Ben Forrest"]
  spec.email         = ["tansaku@gmail.com", "ben@silvabox.com"]

  spec.summary       = %q{Duck punches Array to allow one factorization of even length arrays.}
  spec.description   = %q{One factorization of a graph generates length-1 sets of pairs of elements from the graph.  Each set of pairings is unique and includes all elements of the array. }
  spec.homepage      = "http://github.com/makersacademy/one_factorization"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "http://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
