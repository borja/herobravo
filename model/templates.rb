# Template management
def get_center(template) # Responsive main method (12 units)
  col = 12 # Main div, for all the width
  col -= 3 unless template['right'].nil? # has right div
  col -= 3 unless template['left'].nil?  # has left div
  "#{col}u important(collapse)" # return total units
end

def get_title(params) # Will set website title (top left corner)
	vista = params[:view] ||= 'Herosheet' 
	title ||= vista.capitalize 
	title = params[:param].capitalize if title == 'view' 
	if (vista == 'historia' || vista == 'hero') 
		 title = hero(params[:param].to_i).name 
	end 
	if vista == 'runa' 
		 title = runa(params['param'].to_i).name.upcase 
	end 
	title.gsub!('Beastslord','Señor de las Bestias') 
end

# DB Loader
def views
  load_yaml('views')
end

# Helpers
def view(ruta)
  views.find { |v| v['ruta'] == ruta }
end

def preview(ruta)
  erb :template, locals: view(ruta)
end

def load_partial(position)
  partial = position.gsub(':param', params[:param].to_s)
  erb :"#{partial}"
end
