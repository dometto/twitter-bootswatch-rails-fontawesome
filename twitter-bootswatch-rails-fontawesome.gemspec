# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'twitter/bootswatch/rails/fontawesome/version'

Gem::Specification.new do |spec|
  spec.name          = "twitter-bootswatch-rails-fontawesome"
  spec.version       = Twitter::Bootswatch::Rails::Fontawesome::VERSION
  spec.platform      = Gem::Platform::RUBY
  spec.required_ruby_version = '>= 1.9.3'
  spec.required_rubygems_version = '>= 1.8.11'
  spec.authors       = ["Scott V. Rosenthal"]
  spec.email         = ["sr7575@gmail.com"]
  spec.description   = %q{twitter-bootswatch-rails-fontawesome is a gem extension for twitter-bootswatch-rails 2.3.2 gem that adds Font Awesome toolkit for Rails 3.1+ Asset Pipeline with less-rails}
  spec.summary       = %q{twitter-bootswatch-rails-fontawesome integrates the Font Awesome toolkit into the twitter-bootswatch-rails 2.3.2 gem for Rails 3.1+ Asset Pipeline with less-rails}
  spec.homepage      = "https://github.com/scottvrosenthal/twitter-bootswatch-rails-fontawesome"
  spec.license       = "MIT"
  spec.licenses      = ['MIT', 'GPL-2']

  spec.files = Dir["lib/generators/**/*"] + Dir["lib/twitter/**/*"] + Dir["vendor/**/*"] + ["lib/twitter-bootswatch-rails-fontawesome.rb"]
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency             'railties',   '>= 3.1'
  spec.add_dependency             'less-rails', '>= 2.3'

  spec.add_dependency             'twitter-bootswatch-rails', '~> 3.0.0'

  spec.add_development_dependency 'rails', '>= 3.1'

end
