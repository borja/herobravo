#!/usr/bin/ruby
# encoding: UTF-8
# Clase para gestionar las minimascotas familiares del heroe.
class Pet < Hash
  attr_accessor :id, :name, :torpe

  def initialize(args)
    args.each do |k, v|
      instance_variable_set("@#{k}".to_sym, v) unless v.nil?
    end
  end

  def personajes
    pet(id)['personajes']
  end

  def lacra
    pet(id)['lacra']
  end

  def bono
    pet(id)['bono']
  end

  def sex
    pet(id)['sex']
  end

  def bicho
    pet(id)['name']
  end # > "pitufo", "rata"

  def img_path
    "'../../images/pets/#{bicho}.png'"
  end

  def nombre
    "#{name.capitalize}, #{sex ? 'la' : 'el'} #{bicho.capitalize} #{'torpe' if torpe}"
  end

  def descripcion
    "<b>Bonificador</b>: <i>#{bono}</i>#{"<br><b>Penalizador: </b><i>#{lacra}</i>" if torpe}"
  end

  def conocidos
    total = []
    heros.each do |h|
      if h.pet
        if h.pet.id == id
          total << h.id
        end
      end
    end
    total
  end
end

def pet(id)
  pets[id]
end

def pets
  YAML::load_file(File.join(__dir__, '../data/pets.yml'))
end