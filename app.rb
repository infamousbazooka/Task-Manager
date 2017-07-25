require 'sinatra'
require 'sinatra/activerecord'

set :database, "sqlite3:blog.db"

class Tasks < ActiveRecord::Base
end

get '/' do
    erb :index
end

post '/' do
    @task = param[:title]
end
