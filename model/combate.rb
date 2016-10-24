# YAML DB Loader
def estados
  load_yaml('combate/estados')
end

def posiciones
  load_yaml('combate/posiciones')
end

def resistencias
  load_yaml('combate/resistencias')
end

def estado(id)
  estados[id]
end

def posicion(id)
  posiciones[id]
end

def locura
  load_yaml('combate/locura')
end
