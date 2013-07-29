# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'roman-numerals/version'

Gem::Specification.new do |spec|
  spec.name          = "roman-numerals"
  spec.version       = RomanNumerals::VERSION
  spec.authors       = ["Andrew Vos"]
  spec.email         = ["andrew.vos@gmail.com"]
  spec.description   = %q{Roman numeral converter}
  spec.summary       = %q{Roman numeral converter}
  spec.homepage      = "http://github.com/AndrewVos/roman-numerals"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "rake"
end
