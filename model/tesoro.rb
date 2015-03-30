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
end

class Runa < Engarce
end

class Joya < Engarce
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