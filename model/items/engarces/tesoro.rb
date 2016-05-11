# Tipo de engarce basico
class Gema < Engarce
  def calidad
    gema_calidades[id / 8]
  end

  # returns from heros.tesoro, the list of (maybe repeated)
  # ids of the heros with self.id gem available
  def disponibles
    total = []
    heros.each do |h|
      next unless h.tesoro
      next unless h.tesoro['gemas']
      h.tesoro['gemas'].each do |gema|
        (total << h.id) if gema == id
      end
    end
    total
  end
end

# Tipo de engarce de inscripcion
class Runa < Engarce
  def disponibles
    total = []
    heros.each do |h|
      next unless h.tesoro
      next unless h.tesoro['runas']
      h.tesoro['runas'].each do |runa|
        (total << h.id) if runa == id
      end
    end
    total
  end
end

# Tipo de engarce de orfebreria
class Joya < Engarce
  def disponibles
    total = []
    heros.each do |h|
      next unless h.tesoro
      next unless h.tesoro['joyas']
      h.tesoro['joyas'].each do |joya|
        (total << h.id) if joya == id
      end
    end
    total
  end
end

def gema_calidades
  ['Gemas Comunes', 'Gemas Infrecuentes', 'Gemas Valiosas',
   'Piedras Preciosas', 'Piedras de Poder', 'Gemas Legendarias',
   'Gemas Insólitas']
end
