begin
  require 'rcov/rcovtask'

  namespace :test do 
    desc 'Aggregate code coverage for unit, functional and integration tests'
    Rcov::RcovTask.new(:coverage => 'db:test:prepare') do |t|
      t.libs << "test"
      t.test_files = Dir["test/unit/**/*_test.rb","test/functional/**/*_test.rb", "test/integration/**/*_test.rb"]
      t.verbose = true
      t.rcov_opts << '--comment --rails --exclude=gems/* '
    end
  end
rescue LoadError
end
