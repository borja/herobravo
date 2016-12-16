# Objetos que se llevan en la mochila
class Abalorio < Item
  def name
    abalorio(id)['name']
  end

  def efecto
    abalorio(id)['efecto']
  end

  def precio
    abalorio(id)['precio']
  end

  def unico
    abalorio(id)['unico']
  end

  def fits
    'abalorio'
  end
end
