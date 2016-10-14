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
    articulo = sex ? 'la' : 'el'
    "#{name.capitalize}, #{articulo} #{bicho.capitalize} #{'torpe' if torpe}"
  end

  def descripcion
    toprpeza = "<br><b>Penalizador: </b><i>#{lacra}</i>" if torpe
    "<b>Bonificador</b>: <i>#{bono}</i>#{toprpeza}"
  end

  def conocidos
    total = []
    heros.each do |h|
      next unless h.pet
      (total << h.id) if h.pet.id == id
    end
    total
  end
end

# DB Loader
def pets
  load_yaml('personaje/pets')
end

def pet(id)
  pets[id]
end

# % Statistics
def porcentaje_heroes_con_familiar
  h_familiares = heros.select(&:pet)
  ((h_familiares.count / heros.count.to_f) * 100.0).round(2)
end

def porcentaje_familiares_torpes
  h_familiares = heros.select(&:pet)
  familiares_torpes = h_familiares.count { |h| h.pet.torpe }
  ((familiares_torpes.to_f / h_familiares.count) * 100.0).round(2)
end
