require 'sinatra'
require 'sqlite3'
require 'sequel'


get '/' do
  @DB = Sequel.connect('sqlite://test.db')
  @test = @DB[:Cars].all
  erb :home
end
