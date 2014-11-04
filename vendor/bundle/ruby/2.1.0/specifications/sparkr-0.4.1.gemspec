# -*- encoding: utf-8 -*-
# stub: sparkr 0.4.1 ruby lib

Gem::Specification.new do |s|
  s.name = "sparkr"
  s.version = "0.4.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Ren\u{e9} F\u{f6}hring"]
  s.date = "2014-02-04"
  s.description = "ASCII Sparklines in Ruby"
  s.email = ["rf@bamaru.de"]
  s.executables = ["sparkr"]
  s.files = ["bin/sparkr"]
  s.homepage = "http://trivelop.de/sparkr/"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.2.2"
  s.summary = "[\"ASCII\", \"Sparklines\", \"in\", \"Ruby\"]"

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>, ["~> 1.5"])
      s.add_development_dependency(%q<rake>, [">= 0"])
    else
      s.add_dependency(%q<bundler>, ["~> 1.5"])
      s.add_dependency(%q<rake>, [">= 0"])
    end
  else
    s.add_dependency(%q<bundler>, ["~> 1.5"])
    s.add_dependency(%q<rake>, [">= 0"])
  end
end
