# Los caminos de un heroe.
class Camino < Array
  def name
    first
  end

  def pasos
    last
  end

  # Es posible que este method sea muy pesado
  def conocidos
    n = heros.select(&:camino).map do |h| # Filtra los heroes sin camino
      h.id if h.camino.first == name      # Asocia el camino con el ID
    end
    n.compact # descarta los valores nil
  end

  def img_path
    "'../images/caminos/#{name}.png'"
  end
end

# YAML DB Loader
def caminos
  load_yaml('personaje/caminos')
end

def camino(nombre)
  caminos.find { |c| c.first == nombre }
end
