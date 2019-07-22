require 'rake/testtask'

Rake::TestTask.new do |t|
  t.pattern = 'test/**/*_test.rb'
end

desc 'Publish a gem to rubygems.org'
task :release do
  sh 'rm -rf buffer-*.gem'
  sh 'gem build -q buffer.gemspec'
  sh 'gem push --no-verbose buffer-*.gem'
end
