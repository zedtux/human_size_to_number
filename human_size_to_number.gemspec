# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "human_size_to_number/version"

Gem::Specification.new do |s|
  s.name        = "human_size_to_number"
  s.version     = HumanSizeToNumber::VERSION
  s.platform    = Gem::Platform::RUBY
  s.date        = File.utime("lib/human_size_to_number/version.rb")
  s.authors     = ["zedtux"]
  s.email       = ["zedtux@zedroot.org"]
  s.homepage    = "https://github.com/zedtux/human_size_to_number"
  s.summary     = %q{Implement missing reverse of ActionView::Helpers::NumberHelper#number_to_human_size}
  s.description = %q{Convert a size string like 1.12KB to the number value in Bytes.}
  s.has_rdoc    = false

  s.rubyforge_project = "human_size_to_number"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {spec}/*`.split("\n")
  s.require_paths = ["lib"]
  
  s.add_dependency "actionpack", "~> 2.0.0"
  s.add_dependency "rake"
  
  s.add_development_dependency "rspec"
  s.add_development_dependency "rcov"
end
