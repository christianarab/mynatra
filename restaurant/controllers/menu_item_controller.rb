require './models/menu_item'

class Menu_itemController < Sinatra::Base
  set :views, File.dirname('.') + '/views'
  set :public_folder, File.dirname('.') + '/public'

  # Create new (GET)
  get '/menu_items/new' do
    @menu_item = Menu_item.new
    erb :"menu_items/new"
  end

  # Create new (POST)
  post '/menu_items/create' do
    menu_item = Menu_item.new
  
    menu_item.name = params[:name]
  
    menu_item.description = params[:description]
  
    menu_item.price = params[:price]
  
    menu_item.meal_type = params[:meal_type]
      menu_item.save
    redirect :"menu_items"
  end

  # Update record (POST)
  post '/menu_items/update/:id' do
    menu_item = Menu_item.new
    menu_item.id = params[:id].to_i
  
    menu_item.name = params[:name]
  
    menu_item.description = params[:description]
  
    menu_item.price = params[:price]
  
    menu_item.meal_type = params[:meal_type]
      menu_item.save
    redirect :"menu_items/#{menu_item.id}"
  end

  # Find record (GET)
  get '/menu_items/:id' do
    @menu_item = Menu_item.find_by_id(params[:id].to_i)
    erb :"menu_items/edit"
  end

  # Delete record (POST)
  post '/menu_items/delete/:id' do
    @menu_item = Menu_item.find_by_id(params[:id].to_i)
    @menu_item.delete
    redirect :menu_items
  end

  # Index records (GET)
  get '/menu_items' do
    @menu_items = Menu_item.all
    erb :"menu_items/index"
  end

  get '/menu_items/index' do
    redirect :menu_items
  end
end
