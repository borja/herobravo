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

  # TODO: Hay que cambiar este method, hibrido con view.
  def description
    "<li>Categoría: #{categoria}</li>
		 <li>Defensa:   #{defensa}</li>
		 <li>Precio:    #{precio}</li>"
  end
end
