# Armaduras adicionales a la principal
class Proteccion < Item
  def name
    proteccion(id)['name']
  end

  def defensa
    proteccion(id)['defensa']
  end

  def fits
    proteccion(id)['fits']
  end

  def categoria
    proteccion(id)['categoria']
  end

  def precio
    proteccion(id)['precio']
  end
end
