# Tipos de pergamino
# TODO: Mapear los hechizos
class Pergamino < Util
  def name
    pergamino(id)['name']
  end

  def precio
    pergamino(id)['precio']
  end

  def max # Max num. permitido
    pergamino(id)['hechizos']
  end

  def hechizos
    spells.map { |s| Elemental.new(id: s).name }
  end
end
