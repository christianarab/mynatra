require 'thor/group'

# Mynatra resource generator
module Mynatra
  module Generators
    class Resource < Thor::Group
      include Thor::Actions

      # Takes in dir, name arguments
      argument :name, type: :string
      argument :dir, type: :string

      # Generates empty directory
      def create_dir
        empty_directory(dir)
      end

      # Generates model.rb file 
      def create_model
        template("models/model.txt", "#{dir}/models/#{name}.rb")
      end
      
      # Generates app.rb routes file
      def create_app
        template("app.txt", "#{dir}/app.rb")
      end

      # Generates public folder with CSS style sheet
      def create_public
        directory("public", "#{dir}/public", :recursive => true)
      end

      # Sets source root directory
      def self.source_root
        File.dirname(__FILE__)
      end
    end
  end
end