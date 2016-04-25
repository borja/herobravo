#!/usr/bin/ruby
# encoding: UTF-8

class Magia < Hash
  attr_accessor :id, :name, :efecto, :potencia,
    :diablura, :duracion, :alcance, :tipo, :maestría, :ardid,
    :summun, :chakra # Only in plegarias

  def initialize args
    args.each do |k,v|
      instance_variable_set("@#{k}".to_sym, v) unless v.nil?
    end
  end

  def img_path ; "'../../images/magia/#{elemento}s#{nivel}/#{name}.png'" end

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
end

class Elfica < Magia
  def nivel    ; 1        end    
  def elemento ; 'elfico' end
end

class Sombra < Magia
  def nivel    ; ( (id / 6) + 1 ).to_i  end
  def elemento ; "sombra" end
end

class Sangre < Magia
  def nivel    ; ( (id / 6) + 1 ).to_i  end
  def elemento ; 'sangre' end
end

class Elemental < Magia
  def nivel    ; (id / 24).to_i + 1 end
  def elemento ; %w(fuego aire tierra agua)[id / 6 % 4] end
end

# YAML DB Loader
def elficas   ; load_yaml('magia/elficas').map   { |s|    Elfica.new(s) } end
def plegarias ; load_yaml('magia/plegarias').map { |s|  Plegaria.new(s) } end
def sangres   ; load_yaml('magia/sangres').map   { |s|    Sangre.new(s) } end
def sombras   ; load_yaml('magia/sombras').map   { |s|    Sombra.new(s) } end
def spells    ; load_yaml('magia/spells').map    { |s| Elemental.new(s) } end

# TODO: tune up this!
# All find ID methods
def elfica   id ;   elficas[id] end
def plegaria id ; plegarias[id] end
def sangre   id ;   sangres[id] end
def sombra   id ;   sombras[id] end
def spell    id ;    spells[id] end