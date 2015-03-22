require 'sinatra/base'

class App < Sinatra::Base
  
  # Main Website
  get '/' do
    erb :index
  end

  get '/heroes' do
    @status = "activo"
    erb :'heroes/heroes'
  end
  get '/reservistas' do
    @status = "reserva"
    erb :'heroes/heroes'
  end
  get '/extranjeros' do
    @status = "extranjero"
    erb :'heroes/heroes'
  end
  get '/ausentes' do
    @status = "ausente"
    erb :'heroes/heroes'
  end
  get '/licenciados' do
    @status = "retirado"
    erb :'heroes/heroes'
  end  
  get '/hero/:id' do |id|
    @heroe = heros[ id.to_i ]
    erb :'ficha/ficha'
  end
  get '/items/:items' do |group|
    erb :"items/#{group}"
  end       
  get '/profesiones/:profesion' do |prof|
    erb :"ciudad/profesiones"
  end

  get '/habilidades/:char' do |clase|
    @char = clase
    erb :'personaje/disciplinas'
  end
  
  get '/criaturas/:monster' do |criature|
    erb :"reglamento/criaturas/#{criature}"
  end
  get '/clase/:personaje' do |clase|
    @clase = clase.to_s
    erb :clase
  end
  
  # Sección de magia
  get '/magia/hechizos' do
    @spelllevel = 1
    erb :'magia/hechizos'
  end
  get '/magia/spells/:hero' do |hero_id|
    @heroe = heros[ hero_id.to_i ]
    erb :'magia/spells'
  end
  get '/magia/hechizos/:level' do |level|
    @spelllevel = level.to_i
    erb :'magia/hechizos'
  end
  get '/magia/:topic' do |tema|
    erb :"magia/#{tema}"
  end  
  get '/escuela/:escuela/:nivel' do |escuela, level|
    @spelllevel = level.to_i
    @elemento   = escuela
    erb :"magia/hechizos"
  end
  
  get '/combate/:topic' do |tema|
    erb :"combate/#{tema}"
  end  
  
  get '/city/:city' do |city|
    @ciudad = city
    erb :'ciudad/ciudad'
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
    erb :'personaje/razas'
  end
  
  get '/dado/:veces' do |veces|
    @dados = veces
    erb :'reglamento/dado'
  end
  
  # Templates
  get '/historias' do
    erb :template, :locals => view('historias')
  end
  
  get '/mapa' do
    erb :template, :locals => view('mapa')
  end
  
  get '/familiares' do
    erb :template, :locals => view('familiares')
  end
  
  get '/habilidades' do 
    erb :template, :locals => view('habilidades')
  end
  
  # Root-viewer
  get '/:view' do |view|
    # Pre-defined routes
    vistas_personaje  = ["caminos","profesiones","razas"]
    vistas_reglamento = ["manuales","tesoro","criaturas"]
    vistas_objetos    = ["armaduras","armas","protecciones","miscelaneas","piezas","gemas"]
    vistas_ciudad     = ["maestrodearmas","notaria","palacio","templo"]
    vistas_magia      = ["escuelas","biblioteca"]
    
    # Pre-router
    tema = case
      when vistas_personaje.include?(view)  then "personaje"
      when vistas_reglamento.include?(view) then "reglamento"
      when vistas_ciudad.include?(view)     then "ciudad"
      when vistas_objetos.include?(view)    then "items/#{view}"
      when vistas_magia.include?(view)      then "magia"
      when view == 'jugadores' then "personaje/jugadores"
      # Main fallback: return root-view
      else view
    end  
    erb :"#{tema}/#{view}"
  end
end