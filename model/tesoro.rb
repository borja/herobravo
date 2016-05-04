#!/usr/bin/ruby
# encoding: UTF-8
# Engarce = objetos engarzables: gemas, joyas y runas
class Engarce < Hash
  attr_accessor :id, :name, :fits

  def initialize(args)
    args.each do |k, v|
      instance_variable_set("@#{k}".to_sym, v) unless v.nil?
    end
  end

  def item
    self.class.to_s.downcase
  end

  def img_path
    "'../../images/treasures/#{item}s/#{name}.png'"
  end

  def big_img
    "'../../images/items/#{item}s/#{name}.png'"
  end

  def bonificador(item)
    case
    when item.fits == 'arma'      then return fits[item.categoria] || fits['arma']  || 'Armas sin implementar'
    when item.fits == 'armadura'  then return fits[item.categoria] || fits['pecho'] || 'Armaduras sin implementar'
    when fits[item.fits]          then return fits[item.fits]
    when item.class == Proteccion then return fits['armadura'] || 'Sin bonificador'
    else return 'Sin efecto'
    end
  end
end

# Tipo de engarce basico
class Gema < Engarce
  def calidad
    gema_calidades[id / 8]
  end

  # returns from heros.tesoro, the list of (maybe repeated)
  # ids of the heros with self.id gem available
  def disponibles
    total = []
    heros.each do |h|
      next unless h.tesoro
      next unless h.tesoro['gemas']
      h.tesoro['gemas'].each do |gema|
        (total << h.id) if gema == id
      end
    end
    total
  end
end

# Tipo de engarce de inscripcion
class Runa < Engarce
  def disponibles
    total = []
    heros.each do |h|
      next unless h.tesoro
      next unless h.tesoro['runas']
      h.tesoro['runas'].each do |runa|
        (total << h.id) if runa == id
      end
    end
    total
  end
end

# Tipo de engarce de orfebreria
class Joya < Engarce
  def disponibles
    total = []
    heros.each do |h|
      next unless h.tesoro
      next unless h.tesoro['joyas']
      h.tesoro['joyas'].each do |joya|
        (total << h.id) if joya == id
      end
    end
    total
  end
end

def gema_calidades
  ['Gemas Comunes', 'Gemas Infrecuentes', 'Gemas Valiosas',
   'Piedras Preciosas', 'Piedras de Poder', 'Gemas Legendarias',
   'Gemas Insólitas']
end
