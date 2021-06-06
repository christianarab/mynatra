require 'thor'
require 'mynatra'
require 'generators/resource'

module Mynatra
  class CLI < Thor
    desc "resource [RESOURCE_NAME] [SECOND ARGUMENT]", "Generate a User scaffolding"
    def resource(dir, name)
      Mynatra::Generators::Resource.start([dir, name])
    end 
  end
end