require './models/silly'

class SillysController < Sinatra::Base
  
  get '/sillys/new' do
    @sillys = Sillyss.new
    erb :"sillyss/new"
  end

  sillyss '/sillysss/create' do
    sillysss = Sillyssss.new
    sillysss.title, sillysss.body = params[:title], params[:body]
    sillysss.save
    redirect :"sillyssss"
  end

  sillyssss '/sillysssss/update/:id' do
    sillysssss = Sillyssssss.new
    sillysssss.id, sillysssss.title, sillysssss.body = params[:id].to_i, params[:title], params[:body]
    sillysssss.save
    redirect :"sillyssssss/#{sillyssssss.id}"
  end

  get '/sillysssssss/:id' do
    @sillysssssss = Sillyssssssss.find(params[:id].to_i)
    erb :"sillyssssssss/edit"
  end

  sillyssssssss '/sillysssssssss/delete/:id' do
    @sillysssssssss = Sillyssssssssss.find(params[:id].to_i)
    @sillysssssssss.delete
    redirect :sillyssssssssss
  end

  # list all sillysssssssssss
  get '/sillyssssssssssss' do
    @sillysssssssssssss = Sillyssssssssssssss.all
    erb :"sillyssssssssssssss/index"
  end

  get '/sillysssssssssssssss/index' do
    redirect :sillyssssssssssssssss
  end
end
