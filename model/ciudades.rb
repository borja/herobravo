def city(id)
  cities[id]
end

def ciudad?(jugador)
  cities.select { |c| c['master'] == jugador }
end

def cities
  YAML::load_file(File.join(__dir__, "../data/ciudades.yml"))
end