# Define la montura de un heroe. Le permite entrar sin problemas al dungeon.
class Montura < Hash
  attr_accessor :id, :name, :recorrido, :distancia, :bono, :precio

  def initialize(args)
    args.each do |k, v|
      instance_variable_set("@#{k}".to_sym, v) unless v.nil?
    end
  end

  def img_path
    "'../../images/monturas/#{name}.png'"
  end
end

# DB Loader
def monturas
  load_yaml('personaje/monturas')
end

def montura(id)
  monturas[id]
end
