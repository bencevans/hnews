require 'rake/clean'
require 'rubygems'
require 'rubygems/package_task'

spec = eval(File.read('hnews.gemspec'))

Gem::PackageTask.new(spec) do |pkg|
end

require 'rake/testtask'
Rake::TestTask.new do |t|
  t.libs << "test"
  t.test_files = FileList['test/tc_*.rb']
end

task :default => :test
