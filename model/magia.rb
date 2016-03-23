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
  
  def img_path ; "'../../images/spells/#{ name }.png'"  end
  
  def color # Returns color code
    color = case elemento
  	   when 'fuego'    then 'FF6633'
  	   when 'aire'     then 'CCFFFF'
  	   when 'tierra'   then 'CC9966'
  	   when 'agua'     then '44CCFF'
  	   when 'sombra'   then 'CC9999'
  	   when 'elfico'   then '99FFCC' 
       when 'sangre'   then 'CC4545'
       when 'plegaria' then 'FAEE96'
    end
    "background-color:##{color}"
  end
end

class Plegaria < Magia
  def nivel    ; ( (id / 8) + 1 ).to_i end
  def elemento ; "plegaria" end
  def img_path ; "'../../images/magia/plegarias#{nivel}/#{name}.png'"
  end
end

class Elfica < Magia
  def nivel    ; 1        end    
  def elemento ; 'elfico' end
end

class Sombra < Magia
  def nivel    ; ( (id / 6) + 1 ).to_i  end
  def elemento ; "sombra" end
  def img_path ; "'../../images/magia/sombras#{nivel}/#{name}.png'"
  end
end

class Sangre < Magia
  def nivel    ; ( (id / 6) + 1 ).to_i  end
  def elemento ; 'sangre' end
end

class Elemental < Magia
  def nivel    ; (id / 24).to_i + 1 end
  def elemento ; %w(fuego aire tierra agua)[id / 6 % 4] end
  # elements are allways positioned this way in DB.
end

# TODO: tune up this!
# All fin ID methods
def elfica   id ;   elficas[id] end
def plegaria id ; plegarias[id] end
def sangre   id ;   sangres[id] end
def sombra   id ;   sombras[id] end
def spell    id ;    spells[id] end

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

def spells
  YAML::load_file(File.join(__dir__, '../data/magia/spells.yml')).map { |s| Elemental.new(s) }
end