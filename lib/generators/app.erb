require 'sinatra'

# require and use controllers from within the `./controller` directory
controller_paths = Dir["./controllers/*.rb"].each { |file| require_relative file }
controllers = controller_paths.map { |controller_path| controller_path[/controllers\/(.*?)_controller/m, 1] }
controllers.each { |controller| use Object.const_get("#{controller.capitalize}Controller") }
