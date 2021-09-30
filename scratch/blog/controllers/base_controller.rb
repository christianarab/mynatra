require 'sinatra'

class BaseController < Sinatra::Base
  set :views, File.dirname('.') + '/views'
  set :public_folder, File.dirname('.') + '/public'

  get '/' do 
    erb :"getting_started"
  end

  get '/create' do 
    "<h1>blog Create...</h1>"
  end

  get '/delete' do 
    "<h1>blog Delete...</h1>"
  end

  get '/edit' do 
    "<h1>blog Edit...</h1>"
  end
end