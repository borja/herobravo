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
  
  post '/calculador/' do # This should me tuned up.
    engarces = params[:engarces] || [1]
    objeto   = params[:objeto]   || 0
    repu     = params[:repu]     || 0
    ranuras  = params[:ranuras]  || 0
    erb :template, :locals => view('calculador').merge({
      'engarces' => engarces, 
      'objeto'   => objeto,
      'repu'     => repu,
      'ranuras'  => ranuras
    })
  end
  
end