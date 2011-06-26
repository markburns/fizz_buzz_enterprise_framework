# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "fizz_buzz/version"

Gem::Specification.new do |s|
  s.name        = "fizz_buzz"
  s.version     = FizzBuzz::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Mark Burns"]
  s.email       = ["TODO: Write your email address"]
  s.homepage    = ""
  s.summary     = %q{TODO: Write a gem summary}
  s.description = %q{TODO: Write a gem description}

  s.rubyforge_project = "fizz_buzz"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
