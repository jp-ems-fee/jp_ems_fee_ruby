# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jp_ems_fee/version'

Gem::Specification.new do |spec|
  spec.name          = "jp_ems_fee"
  spec.version       = JpEmsFee::VERSION
  spec.authors       = ["Nishio Takuya"]
  spec.email         = ["littlecub240@gmail.com"]
  spec.summary       = 'EMS delivery fee calculate from japan'
  spec.description   = 'JpEmsFee is EMS delivery fee calculate from japan'
  spec.homepage      = 'https://github.com/webuilder240/jp_ems_fee_ruby'
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
