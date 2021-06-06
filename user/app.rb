require 'sinatra'
require './models/nothing'

get '/' do 
  "<h1>nothing Resource...</h1>"
end

get '/create' do 
  "<h1>nothing Create...</h1>"
end

get '/delete' do 
  "<h1>nothing Delete...</h1>"
end

get '/edit' do 
  "<h1>nothing Delete...</h1>"
end