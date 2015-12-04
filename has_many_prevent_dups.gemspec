$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "has_many_prevent_dups/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "has_many_prevent_dups"
  s.version     = HasManyPreventDups::VERSION
  s.authors     = ["James Kerr"]
  s.email       = ["jkerr838@gmail.com"]
  s.homepage    = "https://github.com/jameskerr/has_many_prevent_dups"
  s.summary     = "A rails gem that prevents duplicate inserts when using the has_many :through relationship in your models."
  s.description = "A rails gem that prevents duplicate inserts when using the has_many :through relationship in your models."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.5"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "awesome_print"
  s.add_development_dependency "byebug"
end
