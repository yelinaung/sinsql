require 'sinatra'
require 'sqlite3'

get '/' do
  begin

    db = SQLite3::Database.open 'test.db'
    "Success!"

  rescue SQLite3::Exception => e

    puts "Exception Occured"
    puts e

  ensure
    db.close if db
  end
end
