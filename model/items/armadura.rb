# Armadura principal
class Armadura < Item
  def name
    armadura(id)['name']
  end

  # Defensa base del personaje
  def defensa
    armadura(id)['defensa']
  end

  def categoria
    armadura(id)['categoria']
  end

  def precio
    armadura(id)['precio']
  end

  def fits
    'armadura'
  end
end
