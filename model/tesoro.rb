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

  def bonificador item
    case
    when item.fits == "arma"      then return fits[item.categoria] || fits['arma']  || "Armas sin implementar"
    when item.fits == "armadura"  then return fits[item.categoria] || fits['pecho'] || "Armaduras sin implementar"
    when fits[item.fits]          then return fits[item.fits]
    when item.class == Proteccion then return fits['armadura'] || "Sin bonificador"
    else return "Sin efecto"
    end
  end
end

class Gema < Engarce

  def calidad
    gema_calidades[id/8]
  end

  def disponibles # returns from heros.tesoro, the list of (maybe repeated) ids of the heros with self.id gem available
    total = []
    heros.each do |h|
      if t = h.tesoro
        if gemas = t["gemas"]
          gemas.each do |gem|
            if gem == self.id
              total << h.id
            end
          end
        end
      end
    end
    total
  end
end

class Runa < Engarce
  # returns from heros.tesoro, the list of (maybe repeated) ids
  #of the heros with self.id gem available
  def disponibles
    total = []
    heros.each do |h|
      if t = h.tesoro
        if rs = t["runas"]
          rs.each do |runa|
            if runa == self.id
              total << h.id
            end
          end
        end
      end
    end
    total
  end
end

class Joya < Engarce
  # returns from heros.tesoro, the list of (maybe repeated) ids
  # of the heros with self.id gem available.
  def disponibles
    total = []
    heros.each do |h|
      if t = h.tesoro
        if js = t["joyas"]
          js.each do |joya|
            if joya == self.id
              total << h.id
            end
          end
        end
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
