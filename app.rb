#encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

set :database, "sqlite3:barbershop.db"

#создаем сущность

class Client < ActiveRecord::Base
end

class Barber < ActiveRecord::Base
end

class Contact < ActiveRecord::Base
end

before do
	@barbers= Barber.order "created_at DESC"
end

get '/visit' do
 erb :visit
end

get '/' do
	
	erb :index
end

post '/visit' do
	@username = params[:username]
	@phone = params[:phone]
	@datetime = params[:date]
	@barber = params[:parik]
	@color = params[:colorpicker]
	
	Client.create :username => @username, :phone => @phone, :datestamp => @datetime, :barber => @barber, :color => @color

	erb :visit

end