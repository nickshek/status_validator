$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "status_validator/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "status_validator"
  s.version     = StatusValidator::VERSION
  s.authors     = ["Nick Shek"]
  s.email       = ["alfshek@hotmail.com"]
  s.summary     = "a very simple library for handling choice for model"
  s.description = "a very simple library for handling choice for model"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.1.8"

  s.add_development_dependency "sqlite3"
end
