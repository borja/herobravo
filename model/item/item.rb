#!/usr/bin/ruby
# encoding: UTF-8

class Item < Hash
  attr_accessor :id, :enchants, :max, :precio,
                :runas, :joyas, :ranuras, :gemas,
                :legendario, :unico, :artefacto
                  
  def initialize args
    args.each do |k,v|
      instance_variable_set("@#{k}".to_sym, v) unless v.nil?
    end
  end 
  
  def enchanted? ; self.enchants            end
  def item       ; self.class.to_s.downcase end
  def engarzado? ; self.gemas or self.joyas or self.runas end
  
  def mundano?
    self.gemas.nil? && self.joyas.nil? && self.runas.nil? && self.ranuras.nil?
  end
  
  def ranuras_libres
    total = 0
    total += self.ranuras if self.ranuras
    total -= self.gemas.size if self.gemas
    total -= self.runas.size if self.runas
    total -= self.joyas.size if self.joyas
    return total
  end
   
  def img_path
    carpeta = self.enchanted? ? "magic/#{self.name + self.enchants.size.to_s}" : self.name
    "'../images/#{self.item}s/#{carpeta}.png'"
  end
  
  def is_tier?
    combo = false
    mix = {:gemas => self.gemas, :runas => self.runas, :joyas => self.joyas }
    tiers.each do |t|
      if t[:mix] == mix
        combo = tier(t[:id]) 
      end
    end
    return combo 
  end  
  
  def tier_color ; self.is_tier? ? self.is_tier?[:color] : "black" end
end

class Proteccion < Item
  def name      ; proteccion(self.id)[:name]      end
  def defensa   ; proteccion(self.id)[:defensa]   end
  def fits      ; proteccion(self.id)[:fits]      end
  def categoria ; proteccion(self.id)[:categoria] end
end

class Miscelanea < Item
  def name     ; miscelanea(self.id)[:name] end
  def fits     ; miscelanea(self.id)[:fits] end
end

class Arma < Item
  def name     ; arma(self.id)[:name]      end
  def ataque   ; arma(self.id)[:ataque]    end
  def diagonal ; arma(self.id)[:diagonal]  end
  def categoria; arma(self.id)[:categoria] end
  def fits     ; "arma" end
end

class Armadura < Item  
  def name     ; armadura(self.id)[:name] end
  def defensa  ; armadura(self.id)[:defensa] end
  def categoria; armadura(self.id)[:categoria] end
  def fits     ; "armadura" end
  def description 
    "<li>Categoría: #{ self.categoria}</li>
		 <li>Defensa: #{ self.defensa.to_s}</li>
		 <li>Precio: #{ self.precio}</li>"
  end
end

class Abalorio < Item
  def name     ; abalorio(self.id)[:name] end
  def fits     ; "abalorio" end
end

class Util < Hash
  attr_accessor :id, :spells # Only for pergaminos
  
  def initialize args
    args.each do |k,v|
      instance_variable_set("@#{k}".to_sym, v) unless v.nil?
    end
  end
  
  def img_path ; "'../images/utiles/#{self.class.to_s.downcase}s/#{self.name}.png'"  end
    
end

class Pieza < Util
  def name ; pieza(self.id)[:name]  end
  def uso  ; pieza(self.id)[:uso]   end 
end

class Pocion < Util
  def name   ; pocion(self.id)[:name]   end
  def efecto ; pocion(self.id)[:efecto] end 
  def precio ; pocion(self.id)[:precio] end 
end

class Pergamino < Util
  def name     ; pergamino(self.id)[:name]     end
  def max      ; pergamino(self.id)[:hechizos] end # Máximo número permitido  
  def hechizos ; self.spells.map { |s| Elemental.new({:id => s}).name } end
end