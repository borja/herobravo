require 'sinatra/base'

class App < Sinatra::Base
  
  get '/' do erb :index end 
  error   do erb :error end
    
  # Templates with double-routing
  get '/:view/:param' do |view,param|
    case view
      when 'hero'        then erb :'ficha/ficha'
      when 'city'        then erb :'ciudad/ciudad'        
      when 'habilidades' then preview('disciplinas')
      when 'criaturas'   then preview('criature') 
      when 'aire' || 'agua' || 'fuego' || 'tierra' then preview('hechizos')      
      else preview(view) # Try same view as URL (with params)            
    end
  end
  
  # Templates with simple root-viewer  
  get '/:view' do |view|
    lista_heroes = ["heroes","reservistas","extranjeros","ausentes","licenciados"]
    case
      when view == 'gemas'     then erb :'items/gemas/gemas'
      when view == 'escuelas'  then erb :'magia/escuelas'
      when view == 'criaturas' then erb :'reglamento/criaturas'
      when lista_heroes.include?(view) then erb :template, :locals => view('heroes')
      else preview(view) # Try same view as URL
    end
  end
end