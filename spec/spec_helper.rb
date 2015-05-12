require('rspec')
require('pg')
require('list')
require('task')

DB = PG.connect({:dbname => "to_do_app"})

RSpec.configure do |config|
  config.after(:each) do
    DB.exec("DELETE FROM tasks *;")
    DB.exec("DELETE FROM lists *;")
  end
end
