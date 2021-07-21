require 'thor'
require 'mynatra'
require 'active_support/inflector'
require 'generators/scaffolding'
require 'generators/resource'

module Mynatra
  class CLI < Thor
    desc "new [NAME]", "Generate mynatra project"
    def new(name)
      Mynatra::Generators::Scaffolding.start([name.singularize])
    end 
    
    desc "resource [NAME] [ARG1] [ARG2]", "Generates resources (`mynatra resource post title body`)"
    def resource(name, *attributes)
      puts "The arguments are: #{attributes}"
      puts "Args is: #{attributes.class}"
      Mynatra::Generators::Resource.start([ name.singularize, attributes ])
    end 
  end
end