# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{textmate}
  s.version = "0.9.6"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Yehuda Katz"]
  s.autorequire = %q{textmate}
  s.date = %q{2009-08-03}
  s.default_executable = %q{textmate}
  s.description = %q{Command-line textmate package manager}
  s.email = %q{wycats@gmail.com}
  s.executables = ["textmate"]
  s.extra_rdoc_files = ["README.markdown", "LICENSE"]
  s.files = ["LICENSE", "README.markdown", "Rakefile", "bin/textmate"]
  s.homepage = %q{http://yehudakatz.com}
  s.require_paths = ["bin"]
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{Command-line textmate package manager}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<thor>, [">= 0.9.2"])
    else
      s.add_dependency(%q<thor>, [">= 0.9.2"])
    end
  else
    s.add_dependency(%q<thor>, [">= 0.9.2"])
  end
end
