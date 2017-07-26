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
    Task.create(:title => params[:title])
    redirect "/"
end

post '/update' do
    Task.create(:title => params[:title])
    redirect "/"
end

post '/delete' do
    Task.create(:title => params[:title])
    redirect "/"
end
