# -*- encoding: utf-8 -*-
require File.expand_path('../lib/active_tweaker/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ['samadhiBot']
  gem.email         = ['sessions@samadhiBot.com']
  gem.description   = %q{ActiveTweaker}
  gem.summary       = %q{Tweak ActiveAdmin with various experimental additions}
  gem.homepage      = 'https://github.com/samadhiBot/active_tweaker'

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = 'active_tweaker'
  gem.require_paths = ['lib']
  gem.version       = ActiveTweaker::VERSION

  gem.add_dependency 'activeadmin'
  gem.add_dependency 'jquery-rails'
  gem.add_dependency 'awesome_nested_fields'
  gem.add_dependency 'chosen-rails'

end