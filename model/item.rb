#!/usr/bin/ruby
# encoding: UTF-8

class Item < Hash
  attr_accessor :id, :enchants, :max, :precio,
                :runas, :joyas, :ranuras, :gemas,
                :legendario, :unico, :artefacto, :size
                  
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
  
  def precio_venta
    pvp = self.precio
    pvp += (self.enchants.count * 100) if self.enchants 
    pvp += (self.runas.count * 100 ) if self.runas
    pvp += (self.joyas.count * 100 ) if self.joyas 
    if self.gemas
      self.gemas.each do |g| 
        pvp += [10,25,50,100,250,500,50][g/8]
      end
    end
    if (self.ranuras_libres > 0)  
      ranuras_libres.times do |i|
        pvp *= 1.1 
      end
    end
    return pvp.to_i
  end
   
  def img_path
    carpeta = self.enchanted? ? "magic/#{self.name + self.enchants.size.to_s}" : self.name
    "'../images/#{self.item}s/#{carpeta}.png'"
  end
  
  def is_tier?
    combo = false
    mix = {gemas: self.gemas, runas: self.runas, joyas: self.joyas }
    tiers.each do |t|
      if t[:mix] == mix
        combo = tier(t[:id]) 
      end
    end
    return combo 
  end  
  
  def tier_color ; self.is_tier? ? self.is_tier?[:color] : 'black' end
end

class Proteccion < Item
  def name      ; proteccion(id)['name']      end
  def defensa   ; proteccion(id)['defensa']   end
  def fits      ; proteccion(id)['fits']      end
  def categoria ; proteccion(id)['categoria'] end
  def precio    ; proteccion(id)['precio']    end
end

class Miscelanea < Item
  def name      ; miscelanea(id)['name']   end
  def fits      ; miscelanea(id)['fits']   end
  def precio    ; miscelanea(id)['precio'] end
end

class Arma < Item
  def name      ; arma(id)['name']      end
  def ataque    ; arma(id)['ataque']    end
  def diagonal  ; arma(id)['diagonal']  end
  def categoria ; arma(id)['categoria'] end
  def precio    ; arma(id)['precio']    end
  def fits      ; "arma" end
end

class Armadura < Item  
  def name     ; armadura(id)['name']      end
  def defensa  ; armadura(id)['defensa']   end
  def categoria; armadura(id)['categoria'] end
  def precio   ; armadura(id)['precio']    end
  def fits     ; "armadura" end
  def description 
    "<li>Categoría: #{categoria}</li>
		 <li>Defensa:   #{defensa.to_s}</li>
		 <li>Precio:    #{precio}</li>"
  end
end

class Abalorio < Item
  def name     ; abalorio(id)['name']   end
  def efecto   ; abalorio(id)['efecto'] end
  def precio   ; abalorio(id)['precio'] end
  def fits     ; "abalorio" end
end

class Util < Item
  attr_accessor :id, :name
  def initialize args
    args.each do |k,v|
      instance_variable_set("@#{k}".to_sym, v) unless v.nil?
    end
  end
  
  def img_path ; "'../images/utiles/#{self.class.to_s.downcase}s/#{self.name}.png'"  end
    
end

class Pieza < Util
  def name   ; pieza(id)['name']   end
  def uso    ; pieza(id)['uso']    end 
  def precio ; pieza(id)['precio'] end 
end

class Pocion < Util
  def name   ; pocion(id)['name']   end
  def efecto ; pocion(id)['efecto'] end 
  def precio ; pocion(id)['precio'] end 
end

class Pergamino < Util
  def name     ; pergamino(id)['name']     end
  def precio   ; pergamino(id)['precio']   end 
  def max      ; pergamino(id)['hechizos'] end # Máximo número permitido  
  def hechizos ; self.spells.map { |s| Elemental.new({:id => s}).name } end
end

class Material < Util
  def name ; material(self.id)['name']  end
  def disponibles # returns from heros.materiales, the list of (maybe repeated) ids of the heros with self.id material available
    total = []
    heros.each do |h|
      if matts = h.materiales
        matts.each do |matt|
            if matt == self.id
              total << h.id
            end
        end
      end
    end
    return total
  end
  def usado_en
    usado = []
    profesions.each do |prof|
      grados.each do |grado|
        prof[grado.to_sym].each do |receta|
          p "receta: "
          p receta
          if receta[:matts]
            if receta[:matts].include?(self.id)
              usado << {:prof => prof[:id], :grado => grado, :receta => receta[:id] }
            end
          end
        end
      end
    end
    return usado
  end
end

def gema(id)
  gemas.find { |g| g.id == id }
end

def gema_ranuras
  gemas.map { |r| r.fits.keys }.flatten.uniq
end

def gemas
  YAML::load_file(File.join(__dir__, '../data/items/engarces/gemas.yml')).map {|g| Gema.new(g)}
end