require "rspec"
require "rspec/core/rake_task"
 
desc "Run all specs with rcov"
RSpec::Core::RakeTask.new("spec:coverage") do |t|
  if RUBY_VERSION[0, 3] == "1.8"
    t.rcov = true
    t.rcov_opts = %w{--rails -Ispec --exclude gems\/,spec\/}
  end
  t.rspec_opts = ["-c"]
end