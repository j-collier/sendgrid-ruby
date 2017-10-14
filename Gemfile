source 'http://rubygems.org'

gemspec name: 'sendgrid-ruby'

Dir['sendgrid-ruby-*.gemspec'].each do |gemspec|
  plugin = gemspec.scan(/sendgrid-ruby-(.*)\.gemspec/).flatten.first
  gemspec(name: "sendgrid-ruby-#{plugin}", development_group: plugin)
end

group :development, :test do
  gem 'rake', '~> 0'
  gem 'rspec'
  gem 'pry'
  gem 'faker'
  gem 'minitest', '~> 5.9'
end
