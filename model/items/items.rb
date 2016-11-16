# Item diccionaries
%w(armas armaduras miscelaneas proteccions abalorios enchants).each do |item|
  define_method(item.to_sym) { load_yaml("items/#{item}") }
end

%w(piezas pociones pergaminos materiales).each do |util|
  define_method(util) { load_yaml("items/utiles/#{util}") }
end

def categorías # Armas
  armas.map { |a| a['categoria'] }.uniq
end

def gema_calidades
  load_yaml('items/engarces/calibres')
end

def gemas
  load_yaml('items/engarces/gemas').map { |g| Gema.new(g) }
end

def joyas
  load_yaml('items/engarces/joyas').map { |g| Joya.new(g) }
end

def runas
  load_yaml('items/engarces/runas').map { |g| Runa.new(g) }
end

def tiers
  load_yaml('items/engarces/tiers')
end

# Libro malvado del Tarot
def tarot
  load_yaml('items/tarot')
end
