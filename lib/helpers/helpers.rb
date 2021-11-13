module Helpers
  module Parsers
    def check_args arg
      if arg.include? ":"
        arg, type = arg.split(":")
        arg = {arg => type}
      else
        arg
      end
      arg
    end
  end
end
