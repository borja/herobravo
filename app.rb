require 'sinatra/base'
class App < Sinatra::Base
  
  get '/' do erb :index end 
  error   do erb :error end
    
  get '/:view/:param' do |view,param| # Templates with double-routing
    case view
      when 'aire','agua','fuego','tierra' then preview('hechizos')      
      else preview(view) # Try same view as URL (with params) 
    end
  end
  
  get '/:view' do |view| # Templates with simple root-viewer  
    case view
      when "reservistas","ausentes","licenciados" then preview('heroes')
      else preview(view) # Try same view as URL
    end
  end
end