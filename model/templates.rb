#!/usr/bin/ruby
# encoding: UTF-8

def get_center template
  case template
    when template[:right] && template[:left] then begin
      puts template[:right] && template[:left]
      return"6u important(collapse)"
    end
    when template[:right] || template[:left] then "9u important(collapse)"
    else begin
      puts template[:right] && template[:left]
      puts template[:right] || template[:left]
      puts template
      return "12u important(collapse)"
    end
  end
end