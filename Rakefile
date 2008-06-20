require 'rubygems'
require 'rake/gempackagetask'
require 'date'

GEM = "textmate"
GEM_VERSION = "0.9.2"
AUTHOR = "Yehuda Katz"
EMAIL = "wycats@gmail.com"
HOMEPAGE = "http://yehudakatz.com"
SUMMARY = "Command-line textmate package manager"

spec = Gem::Specification.new do |s|
  s.name = GEM
  s.version = GEM_VERSION
  s.platform = Gem::Platform::RUBY
  s.has_rdoc = true
  s.extra_rdoc_files = ["README.markdown", "LICENSE"]
  s.summary = SUMMARY
  s.description = s.summary
  s.author = AUTHOR
  s.email = EMAIL
  s.homepage = HOMEPAGE
  
  s.add_dependency "wycats-thor", ">= 0.9.2"
    
  s.require_path = 'bin' # Yes, it's a hack, but otherwise gem complains on install
  s.autorequire = GEM
  s.files = %w(LICENSE README.markdown Rakefile) + Dir.glob("{bin,specs}/**/*")
  s.bindir = "bin"
  s.executables = %w( textmate )
end

Rake::GemPackageTask.new(spec) do |pkg|
  pkg.gem_spec = spec
end

desc "make a gemspec file"
task :make_spec do
  File.open("#{GEM}.gemspec", "w") do |file|
    file.puts spec.to_ruby
  end
end

task :install => [:package] do
  sh %{sudo gem install pkg/#{GEM}-#{GEM_VERSION} --no-rdoc --no-ri}
end