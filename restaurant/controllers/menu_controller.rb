require './models/menu'

class MenuController < Sinatra::Base
  set :views, File.dirname('.') + '/views'
  set :public_folder, File.dirname('.') + '/public'

  # Create new (GET)
  get '/menus/new' do
    @menu = Menu.new
    erb :"menus/new"
  end

  # Create new (POST)
  post '/menus/create' do
    menu = Menu.new
  
    menu.meal = params[:meal]
      menu.save
    redirect :"menus"
  end

  # Update record (POST)
  post '/menus/update/:id' do
    menu = Menu.new
    menu.id = params[:id].to_i
  
    menu.meal = params[:meal]
      menu.save
    redirect :"menus/#{menu.id}"
  end

  # Find record (GET)
  get '/menus/:id' do
    @menu = Menu.find_by_id(params[:id].to_i)
    erb :"menus/edit"
  end

  # Delete record (POST)
  post '/menus/delete/:id' do
    @menu = Menu.find_by_id(params[:id].to_i)
    @menu.delete
    redirect :menus
  end

  # Index records (GET)
  get '/menus' do
    @menus = Menu.all
    erb :"menus/index"
  end

  get '/menus/index' do
    redirect :menus
  end
end
