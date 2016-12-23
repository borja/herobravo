#!/usr/bin/ruby
# encoding: UTF-8
# Clase para gestionar las minimascotas familiares del heroe.
class Pet < Hash
  attr_accessor :id, :name, :torpe, :sabio

  def initialize(args)
    args.each do |k, v|
      instance_variable_set("@#{k}".to_sym, v) unless v.nil?
    end
  end

  def personajes
    if pet(id)['personajes'] == 'todos'
      %w(enano elfo bárbaro mago)
    else
      pet(id)['personajes']
    end
  end

  def lacra
    pet(id)['lacra']
  end

  def bono
    pet(id)['bono']
  end

  def aumento
    pet(id)['aumento']
  end
  
  def sex
    pet(id)['sex']
  end

  def bicho
    pet(id)['name']
  end # > "pitufo", "rata"

  def img_path
    "/images/pets/#{bicho}.png"
  end

  def nombre
    articulo = sex ? 'la' : 'el'
    "#{name.capitalize}, #{articulo} #{bicho.capitalize} #{'torpe' if torpe}"
  end

  def descripcion
    toprpeza = "<br><b>Penalizador: </b><i>#{lacra}</i>" if torpe
    "<b>Bonificador</b>: <i>#{bono}</i>#{toprpeza}"
  end

  def conocidos
    familiares_conocidos(id)
  end
end
