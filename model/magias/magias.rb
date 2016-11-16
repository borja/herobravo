# YAML DB Loader
def elficas
  load_yaml('magia/elficas').map   { |s| Elfica.new(s) }
end

def plegarias
  load_yaml('magia/plegarias').map { |s| Plegaria.new(s) }
end

def execraciones
  load_yaml('magia/execraciones').map { |s| Execracion.new(s) }
end

def sangres
  load_yaml('magia/sangres').map   { |s|    Sangre.new(s) }
end

def sombras
  load_yaml('magia/sombras').map   { |s|    Sombra.new(s) }
end

def arenas
  load_yaml('magia/arenas').map   { |s|    Arena.new(s) }
end

def hielos
  load_yaml('magia/hielos').map   { |s|    Hielo.new(s) }
end

def spells
  load_yaml('magia/spells').map { |s| Elemental.new(s) }
end

# TODO: tune up this!
# All find ID methods
def elfica(id)
  elficas[id]
end

def plegaria(id)
  plegarias[id]
end

def sangre(id)
  sangres[id]
end

def sombra(id)
  sombras[id]
end

def hielo(id)
  hielos[id]
end

def arena(id)
  arenas[id]
end

def spell(id)
  spells[id]
end
