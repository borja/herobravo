# Searching methods for all items
# -----------------------------------------------------------
def arma(id)
  armas[id]
end

def miscelanea(id)
  miscelaneas.find { |m| m.id == id }
end

def proteccion(id)
  proteccions.find { |p| p.id == id }
end

def armadura(id)
  armaduras[id]
end

def abalorio(id)
  abalorios.find { |a| a.id == id }
end

def enchant(id)
  enchants[id]
end

def pieza(id)
  piezas.find { |p| p.id == id }
end

def pocion(id)
  pociones.find { |p| p.id == id }
end

def pergamino(id)
  pergaminos[id]
end

def material(id)
  materiales[id]
end

# Tesoros
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
