require 'rspec/core/rake_task'

task :spec do
  RSpec::Core::RakeTask.new(:spec)
end

desc 'makes the application_runner.rb executable'
task :install do
  working_directory = File.expand_path File.dirname(__FILE__)
  chmod 0755, "#{working_directory}/lib/application_runner.rb"
end

task :default => :spec
