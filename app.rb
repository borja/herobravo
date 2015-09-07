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
      when 'historias'   then erb :'historias/historias'
      when 'test'        then erb :'test/test'
      when 'hechizos'    then preview('hechizos')
      when 'aire'        then preview('hechizos')
      when 'agua'        then preview('hechizos')
      when 'fuego'       then preview('hechizos')
      when 'tierra'      then preview('hechizos')
      when 'spells'      then preview('spells')
      when 'habilidades' then preview('disciplinas')
      when 'dado'        then preview('dado')
      when 'pnj'         then preview('pnj')  
      when 'criaturas'   then erb :template, :locals => {
        :title    => param.capitalize,
        :template => { 
          :left   => 'reglamento/izquierda/bestiario',
          :main   => 'reglamento/criature' 
        }
      }         
      when 'raza'        then erb :template, :locals => {
        :title    => param.capitalize,
        :template => {
          :left   => 'personaje/razas/left/links',
          :main   => "personaje/razas/center/#{param}",
          :right  => "personaje/razas/right/#{param}",
        }
      }              
    end
  end
  
  # Templates with simple root-viewer  
  get '/:view' do |v|
    lista_heroes = ["heroes","reservistas","extranjeros","ausentes","licenciados"]
    case
      when v == 'gemas'     then erb :'items/gemas/gemas'
      when v == 'escuelas'  then erb :'magia/escuelas'
      when v == 'criaturas' then erb :'reglamento/criaturas'
      when lista_heroes.include?(v) then erb :template, :locals => view('heroes')
      else preview(v) # Try same view as URL
    end
  end
  
end