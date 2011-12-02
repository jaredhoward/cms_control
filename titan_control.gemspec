$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "titan_control/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "titan_control"
  s.version     = TitanControl::VERSION
  s.authors     = ["Jared Howard"]
  s.email       = ["jared@howardpants.com"]
  # s.homepage    = "TODO"
  # s.summary     = "TODO: Summary of TitanControl."
  # s.description = "TODO: Description of TitanControl."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.1.1"
  s.add_dependency "jquery-rails"
  s.add_dependency "devise", "~> 1.4.9"
  s.add_dependency "dynamic_form", "~> 1.1.4"

  s.add_development_dependency "sqlite3"
end
