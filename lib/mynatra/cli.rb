require 'thor'
require 'mynatra'
require 'active_support/inflector'
require 'generators/scaffolding'
require 'generators/resource'
require 'helpers/helpers'

module Mynatra
  class CLI < Thor
    include Helpers::Parsers

    desc "new [NAME]", "Generates new mynatra project, --api flag for API only project"
    class_option :api, :type => :boolean, :required => false, :default => false
    def new(name)
        Mynatra::Generators::Scaffolding.start([ name.singularize, options[:api] ]) 
    end 
    
    desc "resource [NAME] [ARG1, ARG2..]", "Generates resources (`example mynatra resource post title:input body:textarea`)"
    def resource(name, *attributes)
      parsed_attributes = attributes.map { |e| check_args(e) }
      Mynatra::Generators::Resource.start([ name.singularize, attributes = parsed_attributes ])
    end 
  end
end