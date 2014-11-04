# -*- encoding: utf-8 -*-
# stub: i18n_yaml_sorter 0.2.0 ruby lib

Gem::Specification.new do |s|
  s.name = "i18n_yaml_sorter"
  s.version = "0.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Bernardo de P\u{e1}dua"]
  s.date = "2011-11-29"
  s.description = " Allows you to deep sort YAML files that are mainly composed of \n      nested hashes and string values. Great to sort your rails I18n YAML files. You can easily\n      add it to a textmate bundle, rake task, or just use the included regular comand line tool. \n    "
  s.email = "berpasan@gmail.com"
  s.executables = ["sort_yaml"]
  s.extra_rdoc_files = ["LICENSE", "README.rdoc"]
  s.files = ["LICENSE", "README.rdoc", "bin/sort_yaml"]
  s.homepage = "http://github.com/redealumni/i18n_yaml_sorter"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.2.2"
  s.summary = "A I18n YAML deep sorter that will keep your locales organized and not screw up your text formating"

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.6.4"])
      s.add_development_dependency(%q<rcov>, [">= 0"])
    else
      s.add_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_dependency(%q<jeweler>, ["~> 1.6.4"])
      s.add_dependency(%q<rcov>, [">= 0"])
    end
  else
    s.add_dependency(%q<bundler>, ["~> 1.0.0"])
    s.add_dependency(%q<jeweler>, ["~> 1.6.4"])
    s.add_dependency(%q<rcov>, [">= 0"])
  end
end
