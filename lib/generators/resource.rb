require 'thor/group'

# Mynatra resource generator
module Mynatra
  module Generators
    class Resource < Thor::Group
      include Thor::Actions

      # Takes in dir, name arguments
      argument :name, type: :string

      # Generates empty directory
      def create_dir
        empty_directory(name)
      end

      # Generates model.rb file 
      def create_model
        template("models/model.erb", "#{name}/models/#{name}.rb")
      end

      # TODO: Generate contollers
      # TODO: Generate views
    

      # Sets source root directory
      def self.source_root
        File.dirname(__FILE__)
      end
    end
  end
end