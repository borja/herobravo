# encoding: UTF-8
def estados
  YAML::load_file(File.join(__dir__, '../data/combate/estados.yml'))
end

def posiciones
  YAML::load_file(File.join(__dir__, '../data/combate/posiciones.yml'))
end

def estado   id ;    estados[id] end
def posicion id ; posiciones[id] end
