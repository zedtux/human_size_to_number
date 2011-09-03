require "rspec"
require "rspec/core/rake_task"
 
desc "Run all specs with rcov"
RSpec::Core::RakeTask.new("spec:coverage") do |t|
  t.rcov = true
  t.rcov_opts = %w{--rails -Ispec --exclude gems\/,spec\/}
  t.rspec_opts = ["-c"]
end