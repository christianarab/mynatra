class CommentsController < Sinatra::Base

  post '/posts/:id/comments/new' do
    @post = Post.find(params[:id].to_i)
    comment = Comment.new
    comment.post_id = params[:id].to_i
    comment.author, comment.body = params[:author], params[:body]
    comment.upvotes, comment.downvotes = 0, 0
    comment.save
    redirect "/posts/#{params[:id]}"
  end

  # comments -> select comment on post, upvote
  get '/post/:id/comments/:commentid/upvote' do
    @comment = Comment.find(params[:commentid].to_i)
    @comment.upvote
    @comment.save
    redirect "/posts/#{params[:id]}"
  end

  # comments -> select comment on post, downvote
  get '/post/:id/comments/:commentid/upvote' do
    @comment = Comment.find(params[:commentid].to_i)
    @comment.downvote
    @comment.save
    redirect "/posts/#{params[:id]}"
  end
end
