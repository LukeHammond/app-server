# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "app-server/version"

Gem::Specification.new do |s|
  s.name        = "app-server"
  s.version     = App::Server::VERSION
  s.authors     = ["LukeHammond"]
  s.email       = ["luke.e.j.hammond@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{TODO: Write a gem summary}
  s.description = %q{TODO: Write a gem description}

  s.rubyforge_project = "app-server"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency 'rails'
  s.add_dependency 'mysql2'
  s.add_dependency 'sass-rails',  '~> 3.1.0'

  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'factory_girl'
  s.add_development_dependency 'shoulda-matchers'
  s.add_development_dependency 'database_cleaner'
end
