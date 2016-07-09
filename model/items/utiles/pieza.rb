# Objetos raros como llaves, setas o mapas.
class Pieza < Util
  def name
    pieza(id)['name']
  end

  def uso
    pieza(id)['uso']
  end

  def precio
    pieza(id)['precio']
  end
end
