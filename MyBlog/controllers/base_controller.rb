require 'sinatra'

class BaseController < Sinatra::Base
  get '/' do 
    "<h1>MyBlogIndex...</h1>"
  end

  get '/create' do 
    "<h1>MyBlogreate...</h1>"
  end

  get '/delete' do 
    "<h1>MyBlogDelete...</h1>"
  end

  get '/edit' do 
    "<h1>MyBlogEdit...</h1>"
  end
end
