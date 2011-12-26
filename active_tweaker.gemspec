# -*- encoding: utf-8 -*-
require File.expand_path('../lib/active_tweaker/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Chris Sessions"]
  gem.email         = ["csessions@gmail.com"]
  gem.description   = %q{ActiveAdmin Tweaker}
  gem.summary       = %q{Tweaks ActiveAdmin with some additions thought by samadhiBot to be useful}
  gem.homepage      = ""

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "active_tweaker"
  gem.require_paths = ["lib"]
  gem.version       = ActiveTweaker::VERSION
end