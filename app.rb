require 'sinatra/base'

class App < Sinatra::Base
  
  error do
    erb :error
  end
  
  get '/div_by_zero' do
    0 / 0
    "You won't see me."
  end
  
  # Main Website
  get '/' do
    erb :index
  end 
  
  get '/hero/:id' do |id|
    @heroe = heros[ id.to_i ]
    erb :'ficha/ficha'
  end
      
  get '/profesiones/:profesion' do |prof|
    erb :"ciudad/profesiones"
  end
  
  get '/city/:city' do |city|
    @ciudad = city
    erb :'ciudad/ciudad'
  end
  
  get '/criaturas/:monster' do |criature|
    erb :"reglamento/criaturas/#{criature}"
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

  get '/historias/:hero' do |hero|
    @heroe = heros[hero.to_i]
    erb :'historias/historias'
  end
  
  get '/test/:question' do |x|
    @respuestas   = x
    @num_pregunta = x.length
    erb :'test/test'
  end
  
  get '/raza/:raza' do |raza|
    @raza = raza
    erb :template, :locals => view('razas')
  end
  
  get '/pnj/:pnj' do |pnj|
    @pnj = pnj
    erb :template, :locals => view('pnj')
  end
  
  #get '/razas' do 
  #  @raza = nil  
  #  erb :template, :locals => view('razas')
  #end
  
  get '/dado/:veces' do |veces|
    @dados = veces
    erb :'reglamento/dado'
  end
  
  get '/gemas' do 
    erb :'items/gemas/gemas'
  end
  get '/criaturas' do 
    erb :'reglamento/criaturas'
  end
  
  get '/escuelas' do 
    erb :'magia/escuelas'
  end
  
  get '/habilidades/:char' do
    erb :template, :locals => view('disciplinas')
  end
  
  # Templates with root-viewer  
  get '/:view' do |v|
    lista_heroes = ["heroes","reservistas","extranjeros","ausentes","licenciados"]
    case
      when lista_heroes.include?(v) then erb :template, :locals => view('heroes')
      else erb :template, :locals => view(v) # Try same view as URL
    end
  end
  
end