require 'rake/testtask'
require 'bundler/gem_tasks'
require 'rspec/core/rake_task'
require 'sendgrid-ruby/version'

desc "Run tests"
Rake::TestTask.new do |t|
  t.libs << 'test'
  t.test_files = FileList['test/sendgrid/test*.rb', 'test/sendgrid/helpers/mail/test*.rb']
  t.verbose = true
end

RSpec::Core::RakeTask.new(:spec) do |t|
  t.rspec_opts = %w(--color)
end

desc 'Build gem into the pkg directory'
task :build do
  FileUtils.rm_rf('pkg')
  Dir['*.gemspec'].each do |gemspec|
    system "gem build #{gemspec}"
  end
  FileUtils.mkdir_p('pkg')
  FileUtils.mv(Dir['*.gem'], 'pkg')
end

desc 'Tags version, pushes to remote, pushes gem'
task release: :build do
  sh 'git', 'tag', '-m', changelog, "v#{SendgridRuby::VERSION}"
  sh 'git push origin master'
  sh "git push origin v#{SendgridRuby::VERSION}"
  sh 'ls pkg/*.gem | xargs -n 1 gem push"
end

task default: [:spec, :test]
