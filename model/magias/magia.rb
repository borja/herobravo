# Todos los hechizos disponibles en el juego
class Magia < Hash
  attr_accessor :id, :name, :efecto, :potencia,
                :diablura, :duracion, :alcance, :tipo, :maestría, :ardid,
                :summun, :chakra # Only in plegarias

  def initialize(args)
    args.each do |k, v|
      instance_variable_set("@#{k}".to_sym, v) unless v.nil?
    end
  end

  def img_path
    "'../../images/magia/#{elemento}s#{nivel}/#{name}.png'"
  end

  def color # Returns color code
    colors = %w(FF6633 CCFFFF CC9966 44CCFF CC9999 99FFCC CC4545 FAEE96)
    elems  = %w(fuego  aire   tierra agua   sombra elfico sangre plegaria)
    c = colors[elems.find_index(elemento)]
    'background-color:#' + c
  end
end
