def camino(nombre)
  caminos.find {|c| c.first == nombre}
end 

def caminos
  YAML::load_file(File.join(__dir__, "../data/caminos.yml"))
end