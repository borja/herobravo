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

# Tesoros
def gema id ; gemas.find { |g| g.id == id } end
def joya id ; joyas.find { |j| j.id == id } end
def runa id ; runas.find { |r| r.id == id } end

def gemas ; YAML::load_file(File.join(__dir__, '../data/items/engarces/gemas.yml')).map {|g| Gema.new(g)} end
def joyas ; YAML::load_file(File.join(__dir__, '../data/items/engarces/joyas.yml')).map {|g| Joya.new(g)} end
def runas ; YAML::load_file(File.join(__dir__, '../data/items/engarces/runas.yml')).map {|g| Runa.new(g)} end

def gema_ranuras ; gemas.map { |g| g.fits.keys }.flatten.uniq end
def runa_ranuras ; runas.map { |r| r.fits.keys }.flatten.uniq end
def joya_ranuras ; joyas.map { |j| j.fits.keys }.flatten.uniq end

def calcular_coste(p)
  p "Recibo : #{p}"
  coste = 0
  p 'El coste comienza como 0'

  # Coste de los engarces (joyas y runas = 4)
  valor_calibre = [5, 10, 25, 50, 100, 250, 500]
  eng = p[:engarces].split(',').sort.reverse
  eng.each_with_index do |e, i|
    if (e.to_i - i) >= 0 # Avoid negative index values
      p " * Coste de la gema nº#{i}: #{valor_calibre[e.to_i - i]}"
      coste += valor_calibre[e.to_i - i]
    else
      p " * La gema de valor #{e}, ha sido descartada"
    end
  end
  p "El coste de las gemas sin reputación #{coste}"
  # Factor de Repu
  factor_reputacion = 0.9**p[:repu].to_i
  coste *= factor_reputacion
  coste.round
end

def categorías # Armas
  armas.map { |a| a['categoria'] }.uniq
end

# Items
def armas
  YAML::load_file(File.join(__dir__, '../data/items/armas.yml'))
end
def armaduras
  YAML::load_file(File.join(__dir__, '../data/items/armaduras.yml'))
end
def miscelaneas
  YAML::load_file(File.join(__dir__, '../data/items/miscelaneas.yml'))
end
def proteccions
  YAML::load_file(File.join(__dir__, '../data/items/protecciones.yml'))
end
def abalorios
  YAML::load_file(File.join(__dir__, '../data/items/abalorios.yml'))
end
def piezas
  YAML::load_file(File.join(__dir__, '../data/items/utiles/piezas.yml'))
end
def pociones
  YAML::load_file(File.join(__dir__, '../data/items/utiles/pociones.yml'))
end
def pergaminos
  YAML::load_file(File.join(__dir__, '../data/items/utiles/pergaminos.yml'))
end
def materiales
  YAML::load_file(File.join(__dir__, '../data/items/utiles/materiales.yml'))
end

def arma       id ;       armas[id] end
def miscelanea id ; miscelaneas[id] end
def proteccion id ; proteccions[id] end
def armadura   id ;   armaduras[id] end
def abalorio   id ;   abalorios[id] end
def pieza      id ;      piezas[id] end
def pocion     id ;    pociones[id] end
def pergamino  id ;  pergaminos[id] end
def material   id ;  materiales[id] end