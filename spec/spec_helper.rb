# encoding: utf-8
if RUBY_VERSION[0, 3] == "1.9"
  require "simplecov"
  SimpleCov.start
end

ROOT_PATH = File.join(File.dirname(__FILE__), '..')
$:.unshift ROOT_PATH unless $:.include? ROOT_PATH

require "rubygems"
require "rspec"

require "lib/human_size_to_number"