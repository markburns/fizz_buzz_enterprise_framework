# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "fizz_buzz/version"

Gem::Specification.new do |s|
  s.name        = "fizz_buzz"
  s.version     = FizzBuzz::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Mark Burns"]
  s.email       = ["markthedeveloper@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{Really solving the FizzBuzz problem}
  s.description = %q{}

  s.rubyforge_project = "fizz_buzz"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
