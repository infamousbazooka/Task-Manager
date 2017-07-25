require 'sinatra'
require 'sinatra/activerecord'

set :database, "sqlite3:blog.db"

class Task < ActiveRecord::Base
end

get '/' do
    @tasks = Task.all
    erb :index
end

post '/' do
    # @task = Task.new(params[:title])
    # @task.save
    # Task.create params[:title]
    Task.create(:title => params[:title])
    redirect "/"
end
