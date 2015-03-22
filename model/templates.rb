#!/usr/bin/ruby
# encoding: UTF-8

def get_center template
  case
    when template[:right].nil? && template[:left].nil? then "12u important(collapse)"
    when template[:right].nil? || template[:left].nil? then "9u important(collapse)"
    else "6u important(collapse)"
  end
end