# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "BoxDrop/version"

Gem::Specification.new do |s|
  s.name        = "BoxDrop"
  s.version     = BoxDrop::VERSION
  s.authors     = ["Jonah Williams"]
  s.email       = ["jonah@carbonfive.com"]
  s.homepage    = "www.carbonfive.com"
  s.summary     = %q{Upload file to Dropbox}
  s.description = %q{Given a dropbox oauth app key and secret authenticate a dropbox account to use the app. Given a token and secret authenticating a given user using that app upload files to the user's Dropbox account.}

  s.rubyforge_project = "BoxDrop"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"

  s.add_runtime_dependency "dropbox-sdk"
end
