require 'thor'
require 'mynatra'
require 'active_support/inflector'
require 'generators/scaffolding'
require 'generators/resource'
require 'helpers/helpers'

module Mynatra
  class CLI < Thor
    include Helpers::Parsers

    desc "new [NAME]", "Generates new mynatra project"
    def new(name)
      Mynatra::Generators::Scaffolding.start([name.singularize])
    end 
    
    desc "resource [NAME] [ARG1] [ARG2]", "Generates resources (`mynatra resource post title body`)"
    def resource(name, *attributes)
      parsed_attributes = attributes.map { |e| check_args(e) }
      Mynatra::Generators::Resource.start([ name.singularize, parsed_attributes ])
    end 
  end
end