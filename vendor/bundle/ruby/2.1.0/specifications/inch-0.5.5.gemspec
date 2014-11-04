# -*- encoding: utf-8 -*-
# stub: inch 0.5.5 ruby lib

Gem::Specification.new do |s|
  s.name = "inch"
  s.version = "0.5.5"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Ren\u{e9} F\u{f6}hring"]
  s.date = "2014-10-26"
  s.description = "Documentation measurement tool for Ruby, based on YARD."
  s.email = ["rf@bamaru.de"]
  s.executables = ["inch"]
  s.files = ["bin/inch"]
  s.homepage = "http://trivelop.de/inch/"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.2.2"
  s.summary = "Documentation measurement tool for Ruby"

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>, ["~> 1.5"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<minitest>, ["~> 5.2"])
      s.add_runtime_dependency(%q<pry>, [">= 0"])
      s.add_runtime_dependency(%q<sparkr>, [">= 0.2.0"])
      s.add_runtime_dependency(%q<term-ansicolor>, [">= 0"])
      s.add_runtime_dependency(%q<yard>, ["~> 0.8.7.5"])
    else
      s.add_dependency(%q<bundler>, ["~> 1.5"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<minitest>, ["~> 5.2"])
      s.add_dependency(%q<pry>, [">= 0"])
      s.add_dependency(%q<sparkr>, [">= 0.2.0"])
      s.add_dependency(%q<term-ansicolor>, [">= 0"])
      s.add_dependency(%q<yard>, ["~> 0.8.7.5"])
    end
  else
    s.add_dependency(%q<bundler>, ["~> 1.5"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<minitest>, ["~> 5.2"])
    s.add_dependency(%q<pry>, [">= 0"])
    s.add_dependency(%q<sparkr>, [">= 0.2.0"])
    s.add_dependency(%q<term-ansicolor>, [">= 0"])
    s.add_dependency(%q<yard>, ["~> 0.8.7.5"])
  end
end
