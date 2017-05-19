require 'sinatra/base'
# Main sinatra App, using param routing.
class App < Sinatra::Base

# GET Routing views
  # Main page 
  get('/') { erb :index }

  # Basic error page (never 404)
  error    { preview('error') }

  # RevengeQuest custom views
  get('/revenge') { erb :'revenge/index' }

  # Templates with double-routing
  get '/:view/:param' do |view, _param|
    es_element  = %w(aire agua fuego tierra).include?(view)
    es_sagrada  = %w(arena hielo sombra sangre).include?(view)
    es_plegaria = %w(plegarias execraciones).include?(view)
    # Custom case for redundant spell lists
    case
      # Magic views
      when es_element  then preview('hechizos')
      when es_sagrada  then preview('sagradas')
      when es_plegaria then preview('plegarias')
      # Usual rooting
      else preview(view)
    end
  end

  # Templates with simple root-viewer
  get '/:view' do |view|
    campeones = %w(reservistas ausentes licenciados).include?(view)
    campeones ? preview('heroes') : preview(view)
  end

# POST Routing views
  post('/calculador') { preview('calculador') }
  post('/buscar')     { preview('heroes') }
end
