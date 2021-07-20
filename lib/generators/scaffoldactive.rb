require 'thor/group'

# Mynatra scaffolding generator
module Mynatra
  module Generators
    class ScaffoldActive < Thor::Group
      include Thor::Actions

      # Takes in dir, name arguments
      argument :name, type: :string

      # Generates rake, gem files
      def rake_gem_files
        template("Rakefile", "#{name}/Rakefile")
        template("Gemfile", "#{name}/Gemfile")
      end
      
      # Generates app.rb,config file
      def create_app
        template("app-activerecord.erb", "#{name}/app.rb")
        template("config/database.yml", "#{name}/config/database.yml")
      end

      # Generates controller
      def create_controller
        template("controllers/base_controller_active.erb", "#{name}/controllers/base_controller.rb")
      end

      # Sets source root directory
      def self.source_root
        File.dirname(__FILE__)
      end
    end
  end
end

