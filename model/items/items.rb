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

def gemas
  load_yaml('items/engarces/gemas').map { |g| Gema.new(g) }
end

def joyas
  load_yaml('items/engarces/joyas').map { |g| Joya.new(g) }
end

def runas
  load_yaml('items/engarces/runas').map { |g| Runa.new(g) }
end

# ID SEARCHING TODO: Myabe this must be some different file.
# -----------------------------------------------------------

# Items comunes, TODO: comunes como tesoros
def arma(id)
  armas[id]
end

def miscelanea(id)
  miscelaneas[id]
end

def proteccion(id)
  proteccions[id]
end

def armadura(id)
  armaduras[id]
end

def abalorio(id)
  abalorios[id]
end

def enchant(id)
  enchants[id]
end

def pieza(id)
  piezas[id]
end

def pocion(id)
  pociones[id]
end

def pergamino(id)
  pergaminos[id]
end

def material(id)
  materiales[id]
end

# Libro malvado del Tarot
def tarot
  load_yaml('items/tarot')
end

# Tesoros, TODO: comunes como tesoros
def gema(id)
  gemas.find { |g| g.id == id }
end

def joya(id)
  joyas.find { |j| j.id == id }
end

def runa(id)
  runas.find { |r| r.id == id }
end

def gema_ranuras
  gemas.map { |g| g.fits.keys }.flatten.uniq
end

def runa_ranuras
  runas.map { |r| r.fits.keys }.flatten.uniq
end

def joya_ranuras
  joyas.map { |j| j.fits.keys }.flatten.uniq
end
