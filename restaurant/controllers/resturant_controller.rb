require './models/resturant'

class ResturantController < Sinatra::Base
  set :views, File.dirname('.') + '/views'
  set :public_folder, File.dirname('.') + '/public'

  # Create new (GET)
  get '/resturants/new' do
    @resturant = Resturant.new
    erb :"resturants/new"
  end

  # Create new (POST)
  post '/resturants/create' do
    resturant = Resturant.new
  
    resturant.name = params[:name]
  
    resturant.location = params[:location]
  
    resturant.manager = params[:manager]
      resturant.save
    redirect :"resturants"
  end

  # Update record (POST)
  post '/resturants/update/:id' do
    resturant = Resturant.new
    resturant.id = params[:id].to_i
  
    resturant.name = params[:name]
  
    resturant.location = params[:location]
  
    resturant.manager = params[:manager]
      resturant.save
    redirect :"resturants/#{resturant.id}"
  end

  # Find record (GET)
  get '/resturants/:id' do
    @resturant = Resturant.find_by_id(params[:id].to_i)
    erb :"resturants/edit"
  end

  # Delete record (POST)
  post '/resturants/delete/:id' do
    @resturant = Resturant.find_by_id(params[:id].to_i)
    @resturant.delete
    redirect :resturants
  end

  # Index records (GET)
  get '/resturants' do
    @resturants = Resturant.all
    erb :"resturants/index"
  end

  get '/resturants/index' do
    redirect :resturants
  end
end
