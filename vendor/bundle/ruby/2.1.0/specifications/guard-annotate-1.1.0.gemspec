# -*- encoding: utf-8 -*-
# stub: guard-annotate 1.1.0 ruby lib

Gem::Specification.new do |s|
  s.name = "guard-annotate"
  s.version = "1.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Craig P Jolicoeur"]
  s.date = "2013-04-18"
  s.description = "Guard::Annotate automatically runs the annotate gem when needed"
  s.email = ["cpjolicoeur@gmail.com"]
  s.homepage = "http://craigjolicoeur.com"
  s.rdoc_options = ["--charset=UTF-8", "--main=README.rdoc", "--exclude='(lib|test|spec)|(Gem|Guard|Rake)file'"]
  s.rubyforge_project = "guard-annotate"
  s.rubygems_version = "2.2.2"
  s.summary = "Guard gem for annotate"

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<guard>, [">= 0.2.2"])
      s.add_runtime_dependency(%q<annotate>, [">= 2.4.0"])
      s.add_development_dependency(%q<rspec>, ["~> 2.9.0"])
      s.add_development_dependency(%q<guard-rspec>, ["~> 0.6.0"])
      s.add_development_dependency(%q<rake>, ["~> 0.9.2.2"])
    else
      s.add_dependency(%q<guard>, [">= 0.2.2"])
      s.add_dependency(%q<annotate>, [">= 2.4.0"])
      s.add_dependency(%q<rspec>, ["~> 2.9.0"])
      s.add_dependency(%q<guard-rspec>, ["~> 0.6.0"])
      s.add_dependency(%q<rake>, ["~> 0.9.2.2"])
    end
  else
    s.add_dependency(%q<guard>, [">= 0.2.2"])
    s.add_dependency(%q<annotate>, [">= 2.4.0"])
    s.add_dependency(%q<rspec>, ["~> 2.9.0"])
    s.add_dependency(%q<guard-rspec>, ["~> 0.6.0"])
    s.add_dependency(%q<rake>, ["~> 0.9.2.2"])
  end
end
