$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "spina/inquiries/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "spina-inquiries"
  s.version     = Spina::Inquiries::VERSION
  s.authors     = ["Bram Jetten"]
  s.email       = ["bram@denkgroot.com"]
  s.homepage    = "http://www.denkgroot.com"
  s.summary     = "Inquiry system for Spina"
  s.description = "Plugin for Spina CMS to include inquiries on your website"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", ">= 5.0"
end
