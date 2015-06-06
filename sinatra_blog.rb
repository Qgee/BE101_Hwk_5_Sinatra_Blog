require 'sinatra'
require 'sinatra/activerecord'
require './user'
require './post'

set :database, "sqlite3:blogapp.sqlite3"


get '/users' do
	@users = User.all
	erb :users
end

get '/user/:id' do
	@user = User.find_by_id(params[:id])
	erb :user_detail
end
