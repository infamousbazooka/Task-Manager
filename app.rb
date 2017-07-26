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
    Task.create(:title => params[:title], :completed => false)
    redirect "/"
end

post '/update/:id' do
    @task = Task.find(params[:id])
	@task.update(completed: true)
	@task.save
    redirect "/"
end

post '/delete/:id' do
    @task = Task.find(params[:id])
	@task.destroy
    redirect "/"
end
