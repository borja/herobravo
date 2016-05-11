# YAML DB Loader
def cities
  load_yaml('ciudades')
end

def city(id)
  cities[id]
end

def ciudad?(jugador)
  cities.select { |c| c['master'] == jugador }
end
