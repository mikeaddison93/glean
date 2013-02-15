# Ensure we require the local version and not one we might have installed already
require File.join([File.dirname(__FILE__),'lib','glean','version.rb'])
spec = Gem::Specification.new do |s| 
  s.name = 'glean'
  s.version = Glean::VERSION
  s.author = 'John Britton'
  s.email = 'public@johndbritton.com'
  s.homepage = 'http://github.com/johndbritton/glean'
  s.platform = Gem::Platform::RUBY
  s.summary = 'A description of your project'
  s.files = `git ls-files`.split($/)
  s.require_paths << 'lib'
  s.has_rdoc = true
  s.extra_rdoc_files = ['README.rdoc','glean.rdoc']
  s.rdoc_options << '--title' << 'glean' << '--main' << 'README.rdoc' << '-ri'
  s.bindir = 'bin'
  s.executables << 'glean'
  s.add_development_dependency('rake')
  s.add_development_dependency('rdoc')
  s.add_development_dependency('aruba')
  s.add_runtime_dependency('gli','2.5.4')
  s.add_runtime_dependency('git','1.2.5')
end
