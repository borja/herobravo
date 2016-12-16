# Armas y escudos
class Arma < Item
  def name
    arma(id)['name']
  end

  def ataque
    arma(id)['ataque']
  end

  def diagonal
    arma(id)['diagonal']
  end

  def categoria
    arma(id)['categoria']
  end

  def precio
    arma(id)['precio']
  end

  def unico
    arma(id)['unico']
  end

  def fits
    'arma'
  end
end
