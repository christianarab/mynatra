require 'sinatra'

require_relative 'controllers/posts_controller.rb'
require_relative 'controllers/comments_controller.rb'
require_relative 'controllers/application_controller.rb'


set :root, File.dirname(__FILE__)

run ApplicationController
use CommentsController
use PostsController
