#!/usr/bin/ruby
# encoding: UTF-8

class Magia < Hash
  attr_accessor :id, :name, :efecto, :potencia,  # Basic Stats
    :diablura,                                   # Only in lvl 1
    :duracion, :alcance, :tipo,                  # Spell descriptors
    :summun, :chakra,                            # Only in plegarias
    :maestría, :ardid                            # New implementations
  
  def initialize args
    args.each do |k,v|
      instance_variable_set("@#{k}".to_sym, v) unless v.nil?
    end
  end
  
  def img_path ; "'../../images/spells/#{ self.name }.png'"  end
  
  def color
    case self.elemento
  	   when "fuego"    then return 'background-color:#FF6633'
  	   when "aire"     then return 'background-color:#CCFFFF'
  	   when "tierra"   then return 'background-color:#CC9966'
  	   when "agua"     then return 'background-color:#44CCFF'
  	   when "sombra"   then return 'background-color:#CC9999'
  	   when "elfico"   then return 'background-color:#99FFCC' 
       when "sangre"   then return 'background-color:#CC4545'
       when "plegaria" then return 'background-color:#FAEE96'
    end
  end
end

class Plegaria < Magia
  def nivel    ; ( (self.id / 8) + 1 ).to_i end
  def elemento ; "plegaria" end
  def img_path 
    "'../../images/magia/plegarias#{self.nivel}/#{ self.name }.png'"
  end
end

class Elfica < Magia
  def nivel    ; 1          end    
  def elemento ; "elfico"   end
end

class Sombra < Magia
  def nivel    ; ( (self.id / 6) + 1 ).to_i  end    
  def elemento ; "sombra"   end
end

class Sangre < Magia
  def nivel    ; ( (self.id / 6) + 1 ).to_i  end    
  def elemento ; "sangre"   end
end

class Elemental < Magia
  def nivel    ; (self.id / 24).to_i + 1 end
  def elemento # elements are allways positioned this way in DB.
    elementos = ["fuego", "aire", "tierra", "agua"]
    elementos[self.id / 6 % 4]
  end
end

# All fin ID methods
def elfica   id ;   elficas[id] end
def plegaria id ; plegarias[id] end
def sangre   id ;   sangres[id] end
def sombra   id ;   sombras[id] end
def spell    id ;    spells[id] end

def escuelas # TODO: Complete this.
 { 'aire'    => '' ,
   'fuego'   => '' ,
   'agua'    => '' ,
   'tierra'  => '' ,
   'sombras' => '' ,
   'tenebro' => '' ,
   'sangre'  => '' ,
   'luz'     => '' 
 }
end

def elficas
  YAML::load_file(File.join(__dir__, '../data/magia/elficas.yml')).map { |e| Elfica.new(e) }
end

def plegarias
  YAML::load_file(File.join(__dir__, '../data/magia/plegarias.yml')).map { |p| Plegaria.new(p) }
end

def sangres
  YAML::load_file(File.join(__dir__, '../data/magia/sangre.yml')).map { |s| Sangre.new(s) }
end

def sombras
  YAML::load_file(File.join(__dir__, '../data/magia/sombras.yml')).map { |s| Sombra.new(s) }
end