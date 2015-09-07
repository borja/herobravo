require 'sinatra/base'

class App < Sinatra::Base
  
  get '/' do erb :index end 
  error   do erb :error end
    
  # Templates with double-routing
  get '/:view/:param' do |view,param|
    case view
      when 'hero'        then erb :'ficha/ficha'
      when 'city'        then erb :'ciudad/ciudad'
      when 'profesiones' then erb :'ciudad/profesiones'
      when 'historia'    then preview('historia')
      when 'test'        then preview('test')
      when 'hechizos'    then preview('hechizos')
      when 'aire'        then preview('hechizos')
      when 'agua'        then preview('hechizos')
      when 'fuego'       then preview('hechizos')
      when 'tierra'      then preview('hechizos')
      when 'spells'      then preview('spells')
      when 'habilidades' then preview('disciplinas')
      when 'dado'        then preview('dado')
      when 'pnj'         then preview('pnj')  
      when 'criaturas'   then preview('criature') 
      when 'raza'        then preview('raza')              
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