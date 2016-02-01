#!/usr/bin/ruby
# encoding: UTF-8

def get_center(template)
  col = case
        when template[:right].nil? && template[:left].nil? then 12
        when template[:right].nil? || template[:left].nil? then 9
        else 6
        end
  "#{col}u important(collapse)"
end
