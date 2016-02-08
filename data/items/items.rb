# encoding: UTF-8

def calcular_coste(p)
  p "Recibo : #{p}"
  coste = 0
  p 'El coste comienza como 0'

  # Coste de los engarces (joyas y runas = 4)
  valor_calibre = [5, 10, 25, 50, 100, 250, 500]
  eng = p[:engarces].split(',').sort.reverse
  eng.each_with_index do |e, i|
    if (e.to_i - i) >= 0 # Avoid negative index values
      p " * Coste de la gema nº#{i}: #{valor_calibre[e.to_i - i]}"
      coste += valor_calibre[e.to_i - i]
    else
      p " * La gema de valor #{e}, ha sido descartada"
    end
  end
  p "El coste de las gemas sin reputación #{coste}"
  # Factor de Repu
  factor_reputacion = 0.9**p[:repu].to_i
  coste *= factor_reputacion
  coste.round
end

# Armas
def armas
  YAML::load_file(File.join(__dir__, 'armas.yml'))
end

def arma(id)
  armas[id]
end

def categorías
  armas.map { |a| a['categoria'] }.uniq
end

# Armaduras
def armaduras
  YAML::load_file(File.join(__dir__, 'armaduras.yml'))
end

def armadura(id)
  armaduras[id]
end

# Miscelaneas
def miscelaneas
  YAML::load_file(File.join(__dir__, 'miscelaneas.yml'))
end

def miscelanea(id)
  miscelaneas[id]
end

# Protecciones
def proteccions
  YAML::load_file(File.join(__dir__, 'protecciones.yml'))
end

def proteccion(id)
  proteccions[id]
end

# Abalorios
def abalorios
  YAML::load_file(File.join(__dir__, 'abalorios.yml'))
end

def abalorio(id)
  abalorios[id]
end

# Piezas
def piezas
  YAML::load_file(File.join(__dir__, 'utiles/piezas.yml'))
end

def pieza(id)
  piezas[id]
end

# Pociones
def pociones
  YAML::load_file(File.join(__dir__, 'utiles/pociones.yml'))
end

def pocion(id)
  pociones[id]
end

# Pergaminos
def pergaminos
  YAML::load_file(File.join(__dir__, 'utiles/pergaminos.yml'))
end

def pergamino(id)
  pergaminos[id]
end

# Materiales
def materiales
  YAML::load_file(File.join(__dir__, 'utiles/materiales.yml'))
end

def material(id)
  materiales[id]
end