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
    total = []
    heros.each do |h|
      if h.camino
        total << h.id if h.camino.first == name
      end
    end
    total
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
