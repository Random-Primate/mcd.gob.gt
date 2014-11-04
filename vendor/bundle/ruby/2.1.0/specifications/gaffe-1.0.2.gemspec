# -*- encoding: utf-8 -*-
# stub: gaffe 1.0.2 ruby lib

Gem::Specification.new do |s|
  s.name = "gaffe"
  s.version = "1.0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["R\u{e9}mi Pr\u{e9}vost", "Simon Pr\u{e9}vost"]
  s.date = "2014-04-14"
  s.description = "Gaffe handles Rails error pages in a clean, simple way."
  s.email = ["rprevost@mirego.com", "sprevost@mirego.com"]
  s.homepage = "https://github.com/mirego/gaffe"
  s.licenses = ["BSD 3-Clause"]
  s.rubygems_version = "2.2.2"
  s.summary = "Gaffe handles Rails error pages in a clean, simple way."

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>, ["~> 1.3"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<rspec>, ["~> 2.14"])
      s.add_development_dependency(%q<coveralls>, [">= 0"])
      s.add_development_dependency(%q<rubocop>, [">= 0"])
      s.add_development_dependency(%q<scss-lint>, [">= 0"])
      s.add_development_dependency(%q<phare>, [">= 0"])
      s.add_runtime_dependency(%q<rails>, [">= 3.2.0"])
    else
      s.add_dependency(%q<bundler>, ["~> 1.3"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<rspec>, ["~> 2.14"])
      s.add_dependency(%q<coveralls>, [">= 0"])
      s.add_dependency(%q<rubocop>, [">= 0"])
      s.add_dependency(%q<scss-lint>, [">= 0"])
      s.add_dependency(%q<phare>, [">= 0"])
      s.add_dependency(%q<rails>, [">= 3.2.0"])
    end
  else
    s.add_dependency(%q<bundler>, ["~> 1.3"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<rspec>, ["~> 2.14"])
    s.add_dependency(%q<coveralls>, [">= 0"])
    s.add_dependency(%q<rubocop>, [">= 0"])
    s.add_dependency(%q<scss-lint>, [">= 0"])
    s.add_dependency(%q<phare>, [">= 0"])
    s.add_dependency(%q<rails>, [">= 3.2.0"])
  end
end
