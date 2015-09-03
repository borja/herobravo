require 'sinatra/base'

class App < Sinatra::Base
  
  error do
    erb :error
  end
  
  get '/' do
    erb :index
  end 
      
  get '/criaturas/:criature' do
    erb :template, :locals => {
      :title    => params[:criature].capitalize,
      :template => { 
        :left   => 'reglamento/izquierda/bestiario',
        :main  => 'reglamento/criature' 
      }
    }   
  end  

  # Sección de magia
  get '/magia/hechizos' do
    @spelllevel = 1
    erb :template, :locals => view('hechizos')
  end
  get '/magia/spells/:hero' do |hero_id|
    @heroe = heros[ hero_id.to_i ]
    erb :template, :locals => view('spells')
  end
  get '/magia/hechizos/:level' do |level|
    @spelllevel = level.to_i
    erb :template, :locals => view('hechizos')
  end
   
  get '/escuela/:escuela/:nivel' do |escuela, level|
    @spelllevel = level.to_i
    @elemento   = escuela
    erb :"magia/hechizos"
  end
  
  get '/test/:question' do |x|
    @respuestas   = x
    @num_pregunta = x.length
    erb :'test/test'
  end
    
  # Templates with double-routing
  get '/:view/:param' do |view,param|
    case view
      when 'hero'        then erb :'ficha/ficha'
      when 'habilidades' then erb :template, :locals => view('disciplinas')
      when 'dado'        then erb :template, :locals => view('dado')
      when 'pnj'         then erb :template, :locals => view('pnj')  
      when 'city'        then erb :'ciudad/ciudad'
      when 'profesiones' then erb :"ciudad/profesiones"
      when 'historias'   then erb :'historias/historias' 
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