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

def camino(nombre)
  caminos.find {|c| c.first == nombre}
end 

def caminos
  YAML::load_file(File.join(__dir__, "../data/caminos.yml"))
end