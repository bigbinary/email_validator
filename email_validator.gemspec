# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = "email_validator"
  s.version     = "0.0.1"
  s.authors     = ["Neeraj Singh"]
  s.email       = ["neeraj@BigBinary.com"]
  s.homepage    = ""
  s.summary     = %q{Simple email validator}
  s.description = %q{Simple email validator}

  s.rubyforge_project = "email_validator"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  s.add_dependency("activemodel", ">= 0")
end
