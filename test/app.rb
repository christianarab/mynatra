require 'sinatra'
require './models/post'
require './models/comment'

# entry route
get '/' do
  erb :getting_started
end

# users -> create many
get '/users/create' do
  User.create_many
  redirect :users
end

# users -> list all users
get '/users' do
  @users = User.all
  erb :"users/index"
end

# user -> creates new user
post '/user/create' do
  User.create params[:email]
  redirect '/users'
end

# user -> delete by email
post '/delete-user/:email' do
  @user = User.find_by_email(params[:email])
  @user.delete
  # delete user here
  redirect :users
end

# user -> find user
get '/user/:email' do
  @user = User.find_by_email(params[:email])
  erb :"users/update"
end

# user -> update user
post '/update-user/:email' do
  @users = User.all
  @users.each do |user|
     if user.email == params[:email]
      user.email= params[:newemail]
     else
     end
    end
  redirect :users
end

# post -> create posts
post '/posts/create' do
  post = Post.new
  post.title, post.body = params[:title], params[:body]
  post.save
  redirect :"posts"
end

# post -> update posts
post '/posts/update/:id' do
  post = Post.new
  post.id, post.title, post.body = params[:id].to_i, params[:title], params[:body]
  post.save
  redirect :"posts/#{post.id}"
end

# post -> find posts by id
get '/posts/:id' do
  @post = Post.find(params[:id].to_i)
  @comments = Comment.all
  erb :"posts/edit"
end

# post -> delete post
post '/posts/delete/:id' do
  @post = Post.find(params[:id].to_i)
  @post.delete
  redirect :posts
end

# post -> lists posts
get '/posts' do
  @posts = Post.all
  erb :"posts/index"
end

# post -> index route
get '/posts/index' do
  redirect :posts
end

# comment -> create comments on post
post '/posts/:id/comments/new' do
  @post = Post.find(params[:id].to_i)
  comment = Comment.new
  comment.post_id = params[:id].to_i
  comment.author, comment.body = params[:author], params[:body]
  comment.upvotes, comment.downvotes = 0, 0
  comment.save
  redirect "/posts/#{params[:id]}"
end

# comment -> select comment on post, upvote
get '/post/:id/comments/:commentid/upvote' do
  @comment = Comment.find(params[:commentid].to_i)
  @comment.upvote
  @comment.save
  redirect "/posts/#{params[:id]}"
end

# comment -> select comment on post, downvote
get '/post/:id/comments/:commentid/upvote' do
  @comment = Comment.find(params[:commentid].to_i)
  @comment.downvote
  @comment.save
  redirect "/posts/#{params[:id]}"
end
