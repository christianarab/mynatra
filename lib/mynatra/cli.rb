require 'thor'
require 'mynatra'
require 'active_support/inflector'
require 'generators/scaffolding'
require 'generators/resource'
require 'generators/scaffoldactive'

module Mynatra
  class CLI < Thor
    desc "new [NAME]", "Generate mynatra project, --sqlite: adds sqlite3"
    method_options :sqlite => :boolean
    def new(name)
      Mynatra::Generators::Scaffolding.start([name.singularize])
      if options.sqlite?
        Mynatra::Generators::ScaffoldActive.start([name.singularize])
      end
    end 
    
    desc "resource [NAME] [ARG1] [ARG2]", "Generates resources (`mynatra resource post title body`)"
    def resource(name, *attributes)
      puts "The arguments are: #{attributes}"
      puts "Args is: #{attributes.class}"
      Mynatra::Generators::Resource.start([ name.singularize, attributes ])
    end 
  end
end