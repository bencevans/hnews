# Ensure we require the local version and not one we might have installed already
require File.join([File.dirname(__FILE__),'lib','hnews_version.rb'])
spec = Gem::Specification.new do |s| 
  s.name = 'hnews'
  s.version = HNews::VERSION
  s.author = 'Ben Evans'
  s.email = 'ben@bensbit.co.uk'
  s.homepage = 'http://bensbit.co.uk'
  s.platform = Gem::Platform::RUBY
  s.summary = 'CLI Hacker News (news.ycombinator.com)'
# Add your other files here if you make them
  s.files = %w(
bin/hnews
lib/hnews_version.rb
  )
  s.require_paths << 'lib'
  s.has_rdoc = true
  s.extra_rdoc_files = ['hnews.rdoc']
  s.rdoc_options << '--title' << 'hnews' << '--main' << 'README.rdoc' << '-ri'
  s.bindir = 'bin'
  s.executables << 'hnews'
  s.add_development_dependency('rake')
  s.add_development_dependency('rdoc')
  s.add_runtime_dependency('gli')
  s.add_runtime_dependency('hn')
  s.add_runtime_dependency('launchy')
end
