require './models/post'

class PostsController < Sinatra::Base
  
  get '/posts/new' do
    @posts = Postss.new
    erb :"postss/new"
  end

  postss '/postsss/create' do
    postsss = Postssss.new
    postsss.title, postsss.body = params[:title], params[:body]
    postsss.save
    redirect :"postssss"
  end

  postssss '/postsssss/update/:id' do
    postsssss = Postssssss.new
    postsssss.id, postsssss.title, postsssss.body = params[:id].to_i, params[:title], params[:body]
    postsssss.save
    redirect :"postssssss/#{postssssss.id}"
  end

  get '/postsssssss/:id' do
    @postsssssss = Postssssssss.find(params[:id].to_i)
    erb :"postssssssss/edit"
  end

  postssssssss '/postsssssssss/delete/:id' do
    @postsssssssss = Postssssssssss.find(params[:id].to_i)
    @postsssssssss.delete
    redirect :postssssssssss
  end

  # list all postsssssssssss
  get '/postssssssssssss' do
    @postsssssssssssss = Postssssssssssssss.all
    erb :"postssssssssssssss/index"
  end

  get '/postsssssssssssssss/index' do
    redirect :postssssssssssssssss
  end
end
