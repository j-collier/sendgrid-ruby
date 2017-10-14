# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sendgrid/version'

Gem::Specification.new do |gem|
  gem.authors         = ['Justin Collier']
  gem.name            = ['sendgrid-ruby-inbound']
  gem.version         = SendGrid::VERSION
  gem.email           = ['justin@kiai.io']
  gem.summary         = 'Inbound email client for SendGrid-Ruby'
  gem.description     = 'Inbound email client for SendGrid-Ruby'
  gem.homepage        = 'https://github.com/sendgrid/sendgrid-ruby'
  gem.license         = 'MIT'

  gem.files           = `git ls-files -- lib | grep inbound`.split("\x0")
  gem.add_dependency 'sendgrid-ruby', "~> #{SendGrid::VERSION}"
  gem.add_dependency 'sinatra', '>= 1.4.7', '<3'
end
