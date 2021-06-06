require './models/post'

class PostsController < Sinatra::Base
  
  get '/posts/new' do
    @post = Post.new
    erb :"posts/new"
  end

  post '/posts/create' do
    post = Post.new
    post.title, post.body = params[:title], params[:body]
    Comment.create_many(1)
    post.save
    redirect :"posts"
  end

  post '/posts/update/:id' do
    post = Post.new
    post.id, post.title, post.body = params[:id].to_i, params[:title], params[:body]
    @comments = Comment.all
    post.save
    redirect :"posts/#{post.id}"
  end

  get '/posts/:id' do
    @post = Post.find(params[:id].to_i)
    @comments = Comment.all
    erb :"posts/edit"
  end

  post '/posts/delete/:id' do
    @post = Post.find(params[:id].to_i)
    @post.delete
    redirect :posts
  end

  # list all posts
  get '/posts' do
    @posts = Post.all
    erb :"posts/index"
  end

  get '/posts/index' do
    redirect :posts
  end
end
