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
    c = case elemento
        when 'fuego'    then 'FF6633'
        when 'aire'     then 'CCFFFF'
        when 'tierra'   then 'CC9966'
        when 'agua'     then '44CCFF'
        when 'sombra'   then 'CC9999'
        when 'elfico'   then '99FFCC'
        when 'sangre'   then 'CC4545'
        when 'plegaria' then 'FAEE96'
        end
    "background-color:##{c}"
  end
end
