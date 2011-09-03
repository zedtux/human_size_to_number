# encoding: utf-8

ROOT_PATH = File.join(File.dirname(__FILE__), '..')
$:.unshift ROOT_PATH unless $:.include? ROOT_PATH

require "rubygems"
require "rspec"
require "active_support"

require "lib/human_size_to_number"