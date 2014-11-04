# -*- encoding: utf-8 -*-
# stub: guard-migrate 1.1.0 ruby lib

Gem::Specification.new do |s|
  s.name = "guard-migrate"
  s.version = "1.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.6") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Geoff Lanotte"]
  s.date = "2014-05-01"
  s.description = "Guard::Migrate automatically runs your database migrations when needed"
  s.email = ["geofflanotte@gmail.com"]
  s.homepage = "http://rubygems.org/gems/guard-migrate"
  s.licenses = ["MIT"]
  s.rdoc_options = ["--charset=UTF-8", "--main=README.rdoc", "--exclude='(lib|test|spec)|(Gem|Guard|Rake)file'"]
  s.rubyforge_project = "guard-migrate"
  s.rubygems_version = "2.2.2"
  s.summary = "Guard gem for rails migrations"

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<guard>, [">= 2.3.0"])
      s.add_runtime_dependency(%q<activerecord>, [">= 4.1.0"])
      s.add_development_dependency(%q<bundler>, [">= 1.3.5"])
    else
      s.add_dependency(%q<guard>, [">= 2.3.0"])
      s.add_dependency(%q<activerecord>, [">= 4.1.0"])
      s.add_dependency(%q<bundler>, [">= 1.3.5"])
    end
  else
    s.add_dependency(%q<guard>, [">= 2.3.0"])
    s.add_dependency(%q<activerecord>, [">= 4.1.0"])
    s.add_dependency(%q<bundler>, [">= 1.3.5"])
  end
end
