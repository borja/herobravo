#!/usr/bin/ruby
# encoding: UTF-8

def get_center(template)
  col = case
        when template['right'].nil? && template['left'].nil? then 12
        when template['right'].nil? || template['left'].nil? then 9
        else 6
        end
  "#{col}u important(collapse)"
end

# DB Loader
def views
  load_yaml('views')
end

# Helpers
def view(ruta)
  views.find { |v| v['ruta'] == ruta }
end

def preview(ruta)
  erb :template, locals: view(ruta)
end

def load_partial(position)
  partial = position.gsub(':param', params[:param].to_s)
  erb :"#{partial}"
end
