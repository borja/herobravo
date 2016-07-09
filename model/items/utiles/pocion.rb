# Pociones de todo tipo
class Pocion < Util
  def name
    pocion(id)['name']
  end

  def efecto
    pocion(id)['efecto']
  end

  def precio
    pocion(id)['precio']
  end
end
