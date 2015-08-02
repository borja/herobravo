#!/usr/bin/ruby
# encoding: UTF-8

class Engarce < Hash
  attr_accessor :id, :name, :fits
                  
  def initialize args
    args.each do |k,v|
      instance_variable_set("@#{k}".to_sym, v) unless v.nil?
    end
  end
  def item ; self.class.to_s.downcase end
  def img_path ; "'../../images/treasures/#{self.item}s/#{self.name}.png'" end
  
  def bonificador item
    case 
      when item.fits == "arma"         then return self.fits[item.categoria.to_sym] || self.fits[:arma] || "TBD"
      when item.fits == "armadura"     then return self.fits[item.categoria.to_sym] || self.fits[:armadura] || "TBD"
      when self.fits[item.fits.to_sym] then return self.fits[item.fits.to_sym]
      when item.class == Proteccion    then return self.fits[:armadura] || "Sin bonificador"
      else return "Sin efecto"
    end
  end
end

class Gema < Engarce
  def calidad ; gema_calidades[self.id/8] end
  
  def disponibles # returns from heros.tesoro, the list of (maybe repeated) ids of the heros with self.id gem available
    total = []
    heros.each do |h|
      if t = h.tesoro
        if gemas = t[:gemas]
          gemas.each do |gem|
            if gem == self.id
              total << h.id
            end
          end
        end
      end
    end
    return total
  end
end

class Runa < Engarce
  def disponibles # returns from heros.tesoro, the list of (maybe repeated) ids of the heros with self.id gem available
    total = []
    heros.each do |h|
      if t = h.tesoro
        if rs = t[:runas]
          rs.each do |runa|
            if runa == self.id
              total << h.id
            end
          end
        end
      end
    end
    return total
  end
end

class Joya < Engarce
  def disponibles # returns from heros.tesoro, the list of (maybe repeated) ids of the heros with self.id gem available
    total = []
    heros.each do |h|
      if t = h.tesoro
        if js = t[:joyas]
          js.each do |joya|
            if joya == self.id
              total << h.id
            end
          end
        end
      end
    end
    return total
  end
end

def gema_calidades
  ["Gemas Comunes",
   "Gemas Infrecuentes",
   "Gemas Valiosas",
   "Piedras Preciosas",
   "Piedras de Poder",
   "Gemas Legendarias",
   "Gemas Insólitas"]
end  