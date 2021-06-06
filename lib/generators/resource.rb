require 'thor/group'

module Mynatra
  module Generators
    class Resource < Thor::Group
      include Thor::Actions

      argument :dir, type: :string
      argument :name, type: :string

      def create_dir
        empty_directory(dir)
      end

      def create_model
        template("models/model.txt", "#{dir}/models/#{name}.rb")
      end

      def create_view
        template("views/resource/index.txt", "#{dir}/views/#{name}/index.erb")
      end
      
      def create_app
        template("app.txt", "#{dir}/app.rb")
      end

      def create_public
        directory("public", "#{dir}/public", :recursive => true)
      end

      def self.source_root
        File.dirname(__FILE__)
      end
    end
  end
end