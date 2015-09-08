require 'sinatra/base'
class App < Sinatra::Base
  
  get '/' do erb :index end 
  error   do erb :error end
    
  # Templates with double-routing
  get '/:view/:param' do |view,param|
    case view
      when 'hero'        then erb :'ficha/ficha'
      when 'city'        then erb :'ciudad/ciudad'        
      when 'aire','agua','fuego','tierra' then preview('hechizos')      
      else preview(view) # Try same view as URL (with params) 
    end
  end
  
  # Templates with simple root-viewer  
  get '/:view' do |view|
    case view
      when "heroes","reservistas","extranjeros","ausentes","licenciados" then preview('heroes')
      else preview(view) # Try same view as URL
    end
  end
end