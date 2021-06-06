require 'thor/group'
puts __FILE__

module Mynatra
  module Generators
    class Resource < Thor::Group
      include Thor::Actions

      argument :dir, type: :string
      argument :name, type: :string

      def create_dir
        empty_directory(dir)
      end

      def copy_model
        template("model.txt", "#{dir}/models/#{name}.rb")
      end

      def self.source_root
        File.dirname(__FILE__) + "/models"
      end
    end
  end
end