require 'thor'
require 'mynatra'
require 'active_support/inflector'
require 'generators/scaffolding'
require 'generators/resource'

module Mynatra
  class CLI < Thor
    # desc "resource [RESOURCE_NAME] [DIRECTORY DESTINATION]", "Generate a resource"
    # def resource(name, dir)
    #   Mynatra::Generators::Resource.start([name, dir])
    # end 
    desc "new [NAME]", "Generate mynatra scaffolding"
    def new(name)
      Mynatra::Generators::Scaffolding.start([name.singularize])
    end 
    
    desc "resource [NAME] [ARG1] [ARG2]", "Generate a resource with 2 arguments i.e mynatra resource post title body"
    def resource(name, *attributes)
      puts "The arguments are: #{attributes}"
      puts "Args is: #{attributes.class}"
      Mynatra::Generators::Resource.start([ name.singularize, attributes ])
    end 
  end
end