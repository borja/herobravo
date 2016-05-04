#!/usr/bin/ruby
# encoding: UTF-8

# Todos los hechizos : fuego, tierra, agua, viento
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

# Todos los hechizos de plegaria
class Plegaria < Magia
  def nivel
    ((id / 8) + 1).to_i
  end

  def elemento
    'plegaria'
  end
end

# Todos los hechizos silvanos
# TODO: Nuevos hechizos de tipo elfico
class Elfica < Magia
  def nivel
    1 # Pronto hay que aumentar esto
  end

  def elemento
    'elfico'
  end
end

# Todos los hechizos de tipo sombra
class Sombra < Magia
  def nivel
    ((id / 6) + 1).to_i
  end

  def elemento
    'sombra'
  end
end

# Todos los hechizos de tipo sangre
class Sangre < Magia
  def nivel
    ((id / 6) + 1).to_i
  end

  def elemento
    'sangre'
  end
end

# Todos los hechizos de tipo elemental
class Elemental < Magia
  def nivel
    (id / 24).to_i + 1
  end

  def elemento
    %w(fuego aire tierra agua)[id / 6 % 4]
  end
end
