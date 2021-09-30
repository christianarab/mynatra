require './models/post'

class PostController < Sinatra::Base
  set :views, File.dirname('.') + '/views'
  set :public_folder, File.dirname('.') + '/public'

  # Create new (GET)
  get '/posts/new' do
    @post = Post.new
    erb :"posts/new"
  end

  # Create new (POST)
  post '/posts/create' do
    post = Post.new
  
    post.title = params[:title]
  
    post.body = params[:body]
      post.save
    redirect :"posts"
  end

  # Update record (POST)
  post '/posts/update/:id' do
    post = Post.new
    post.id = params[:id].to_i
  
    post.title = params[:title]
  
    post.body = params[:body]
      post.save
    redirect :"posts/#{post.id}"
  end

  # Find record (GET)
  get '/posts/:id' do
    @post = Post.find_by_id(params[:id].to_i)
    erb :"posts/edit"
  end

  # Delete record (POST)
  post '/posts/delete/:id' do
    @post = Post.find_by_id(params[:id].to_i)
    @post.delete
    redirect :posts
  end

  # Index records (GET)
  get '/posts' do
    @posts = Post.all
    erb :"posts/index"
  end
end
