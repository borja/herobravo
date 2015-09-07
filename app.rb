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
      when 'hechizos'    then erb :template, :locals => view('hechizos')
      when 'aire'        then erb :template, :locals => view('hechizos')
      when 'agua'        then erb :template, :locals => view('hechizos')
      when 'fuego'       then erb :template, :locals => view('hechizos')
      when 'tierra'      then erb :template, :locals => view('hechizos')
      when 'spells'      then erb :template, :locals => view('spells')
      when 'habilidades' then erb :template, :locals => view('disciplinas')
      when 'dado'        then erb :template, :locals => view('dado')
      when 'pnj'         then erb :template, :locals => view('pnj')  
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
      else erb :template, :locals => view(v) # Try same view as URL
    end
  end
  
end