# Searching methods for all items
# -----------------------------------------------------------
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

def tier(id)
  tiers[id]
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
