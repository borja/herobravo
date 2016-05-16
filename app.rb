require 'sinatra/base'
# Main sinatra App, using param routing.
class App < Sinatra::Base
  # GET Routing views
  get('/') { erb :index }
  error    { erb :error }

  get '/:view/:param' do |view, param| # Templates with double-routing
    hechizo = %w(aire agua fuego tierra).include?(view)
    hechizo ? preview('hechizos') : preview(view)
  end

  get '/:view' do |view| # Templates with simple root-viewer
    campeones = %w(reservistas ausentes licenciados).include?(view)
    campeones ? preview('heroes') : preview(view)
  end

  # POST Routing views
  post('/calculador') { preview('calculador') }
  post('/buscar')     { preview('heroes') }
end
