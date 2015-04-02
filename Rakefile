#!/usr/bin/env rake
begin
  require 'bundler/setup'
rescue LoadError
  puts 'You must `gem install bundler` and `bundle install` to run rake tasks'
end
begin
  require 'rdoc/task'
rescue LoadError
  require 'rdoc/rdoc'
  require 'rake/rdoctask'
  RDoc::Task = Rake::RDocTask
end

RDoc::Task.new(:rdoc) do |rdoc|
  rdoc.rdoc_dir = 'rdoc'
  rdoc.title    = 'Blorgh'
  rdoc.options << '--line-numbers'
  rdoc.rdoc_files.include('README.rdoc')
  rdoc.rdoc_files.include('lib/**/*.rb')
end

APP_RAKEFILE = File.expand_path("../test/dummy/Rakefile", __FILE__)
load 'rails/tasks/engine.rake'
Dir.glob('lib/tasks/*.rake').each {|r| import r}

Bundler::GemHelper.install_tasks

require 'rake/testtask'

Rake::TestTask.new(:test) do |t|
  t.libs << 'lib'
  t.libs << 'test'
  t.pattern = 'test/**/*_test.rb'
  t.verbose = false
end


task :default => :test

# require 'rubygems'
# require 'rake'
# require 'echoe'
#
# Echoe.new('uniquify', '0.1.0') do |p|
#   p.description     = "Generate a trcking app for users"
#   p.url             = "http://github.com/eifion/tracking"
#   p.author          = "vishnu prabhakar "
#   p.email           = "vishnuprabhakar@kreatio.com"
#   p.ignore_pattern  = ["tmp/*", "script/*"]
#   p.development_dependencies = []
# end
#
# Dir["#{File.dirname(__FILE__)}/tasks/*.rake"].sort.each { |ext| load ext }
