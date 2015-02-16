$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "blorgh/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "blorgh"
  s.version     = "0.1.0"
  s.authors     = ["vishnu"]
  s.email       = ["vishnuprabhakar@kreatio.com"]
  s.homepage    = "TODO"
  s.summary     = "used to track all the user info from webpage"
  s.description = "used to track all the user info from any webpage"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.1.3"
   s.add_dependency "jquery-rails"
  s.add_dependency "geocoder"

  s.add_development_dependency "sqlite3"
end
