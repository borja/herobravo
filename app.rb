require 'sinatra/base'

class App < Sinatra::Base
  get '/' do
    erb :index
  end

  get '/heroes' do
    @status = "activo"
    erb :heroes
  end
  get '/reservistas' do
    @status = "reserva"
    erb :heroes
  end
  get '/extranjeros' do
    @status = "extranjero"
    erb :heroes
  end
  get '/ausentes' do
    @status = "ausente"
    erb :heroes
  end
  get '/licenciados' do
    @status = "retirado"
    erb :heroes
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
  
  get '/habilidades' do
    erb :'personaje/habilidades'
  end
  
  get '/dado/:veces' do |veces|
    @dados = veces
    erb :dado
  end

  get '/criaturas/:monster' do |criature|
    erb :"criaturas/#{criature}"
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
  
  # Sección de la ciudad
  get '/ciudad/:topic' do |tema|
    erb :"ciudad/#{tema}"
  end
  get '/city/:city' do |city|
    @ciudad = city
    erb :ciudad
  end
  
  get '/historias/:hero' do |hero|
    @heroe = heros[hero.to_i]
    erb :'historias/historias'
  end
  
  # Our cool pj-test
  get '/test/:question' do |x|
    @respuestas   = x
    @num_pregunta = x.length
    erb :'test/test'
  end

  get '/mapa' do
    erb :'mapa/mapa'
  end
  
  get '/torre' do
    erb :'torre/torre'
  end
  
  get '/caminos' do
    erb :'personaje/caminos'
  end
  get '/familiares' do
    erb :'personaje/familiares'
  end
  
  get '/objetos' do
    erb :'objetos/objetos'
  end
  
  # Try root-view
  get '/:view' do |view|
    erb :"#{view}"
  end
  
end
