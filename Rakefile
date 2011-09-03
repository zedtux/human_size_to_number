require "rubygems"
require "rake"
require "bundler"
Bundler::GemHelper.install_tasks

Dir["#{Gem.searcher.find("human_size_to_number").full_gem_path}/lib/tasks/**/*.rake"].each { |ext| load ext }