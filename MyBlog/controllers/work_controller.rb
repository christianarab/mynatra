require './models/work'

class WorksController < Sinatra::Base
  
  get '/works/new' do
    @works = Workss.new
    erb :"workss/new"
  end

  workss '/worksss/create' do
    worksss = Workssss.new
    worksss.title, worksss.body = params[:title], params[:body]
    worksss.save
    redirect :"workssss"
  end

  workssss '/worksssss/update/:id' do
    worksssss = Workssssss.new
    worksssss.id, worksssss.title, worksssss.body = params[:id].to_i, params[:title], params[:body]
    worksssss.save
    redirect :"workssssss/#{workssssss.id}"
  end

  get '/worksssssss/:id' do
    @worksssssss = Workssssssss.find(params[:id].to_i)
    erb :"workssssssss/edit"
  end

  workssssssss '/worksssssssss/delete/:id' do
    @worksssssssss = Workssssssssss.find(params[:id].to_i)
    @worksssssssss.delete
    redirect :workssssssssss
  end

  # list all worksssssssssss
  get '/workssssssssssss' do
    @worksssssssssssss = Workssssssssssssss.all
    erb :"workssssssssssssss/index"
  end

  get '/worksssssssssssssss/index' do
    redirect :workssssssssssssssss
  end
end
