require "rubygems"
require "rake"
require "bundler"
Bundler::GemHelper.install_tasks

Dir["#{Gem::Specification.find_all {|spec| spec.contains_requirable_file? "human_size_to_number"}.first.full_gem_path}/lib/tasks/**/*.rake"].each { |ext| load ext }

task :default => ["spec:coverage"]