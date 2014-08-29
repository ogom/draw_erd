require File.expand_path('../dummy/config/environment.rb',  __FILE__)
Dir[File.expand_path('../fixtures/**/*.rb',  __FILE__)].each {|f| require f}

puts 'Migrate'
ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: ':memory:')
CreateUsers.migrate(:change)
