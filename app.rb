require 'sinatra/base'
# Main sinatra App, using param routing. 
class App < Sinatra::Base
  get('/') { erb :index }
  error    { erb :error }

  get '/:view/:param' do |view, param| # Templates with double-routing
    case view
    when 'aire', 'agua', 'fuego', 'tierra' then preview('hechizos')
    else preview(view) # Try same view as URL (with params)
    end
  end

  get '/:view' do |view| # Templates with simple root-viewer
    case view
    when 'reservistas', 'ausentes', 'licenciados' then preview('heroes')
    else preview(view) # Try same view as URL
    end
  end

  post('/calculador') { preview('calculador') }
  post('/buscar')     { preview('heroes') }
end
