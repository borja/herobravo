require 'sinatra/base'
# Main sinatra App, using param routing.
class App < Sinatra::Base
  # GET Routing views
  get('/') { erb :index }
  error    { preview('error') }

  # RevengeQuest custom views
  get('/revenge') { erb :'revenge/index' }

  get '/:view/:param' do |view, _param| # Templates with double-routing
    es_element = %w(aire agua fuego tierra).include?(view)
    es_sagrada = %w(arena hielo sombra sangre).include?(view)
    # Custom case for redundant spell lists
    case
      when es_element then preview('hechizos')
      when es_sagrada then preview('sagradas')
      else preview(view) # Usual rooting
    end
  end

  get '/:view' do |view| # Templates with simple root-viewer
    campeones = %w(reservistas ausentes licenciados).include?(view)
    campeones ? preview('heroes') : preview(view)
  end

  # POST Routing views
  post('/calculador') { preview('calculador') }
  post('/buscar')     { preview('heroes') }
end
