class Camino < Array
  
  def name  ; self.first end
  def pasos ; self.last  end
  
  def conocidos
    total = []
    heros.each do |h|
      if h.camino
        if h.camino.first == name
          total << h.id
        end
      end
    end
    total
  end
  
  def img_path
    "'../images/caminos/#{name}.png'"
  end

end

# YAML DB Loader
def caminos ; load_yaml('caminos') end

def camino(nombre)
  caminos.find {|c| c.first == nombre}
end
