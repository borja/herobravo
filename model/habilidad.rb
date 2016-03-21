#!/usr/bin/ruby
# encoding: UTF-8

class Habilidad < Hash
  attr_accessor :id, :name, :description, 
    :type, :nivel, :requisitos, :foco, :rangos, :coste, :char
  
  def initialize args
    args.each do |k,v|
      instance_variable_set("@#{k}".to_sym, v) unless v.nil?
    end
  end
  
  def ranks    ; (self.type == 'única') ? 6 : self.rangos  end
  def img_path ; "/images/skills/#{self.char}/#{self.name}.png" end
    
end

class Hab < Hash
  attr_accessor :name, :description
    
  def initialize args
    args.each do |k,v|
      instance_variable_set("@#{k}".to_sym, v) unless v.nil?
    end
  end
  
  def type     ; "base" end
  def nivel    ; 1 end
  def img_path ; "/images/skills/base/#{name}.png" end
    
end

pjs = %w(
  caminante brujo vengador hoplita beastslord bersérker
  hechicero invocador conjurador paladín clérigo sacerdote
  derviche arquero druida ladrón asesino nigromante
  matador falangista ingeniero
)

# Generic clase creator
pjs.each do |pj|
  define_method(pj+'s') do
   YAML::load_file(File.join(__dir__, "../data/skills/#{pj}.yml"))
  end
  define_method(pj) do |id|
    send(pj + 's')[id].merge(char: pj)
  end
end

def maestrodearmas
  YAML::load_file(File.join(__dir__, '../data/maestrodearma.yml'))
end
  
def maestrodearma id 
  maestrodearmas.find { |m| m['id'] == id }.merge('char' => 'maestrodearmas')
end

def fama(personaje)
  lugar_fama = case personaje
    when 'matador'    then 'El Menhir de los matadores'
    when 'falangista' then 'Los salones pretorianos'
    when 'ingeniero'  then 'Academia de Ingeniería'
    when 'druida'     then 'El círculo de Gaia'
    when 'arquero'    then 'La arboleda'
    when 'derviche'   then 'El Árbol de marfil'
    when 'asesino'    then 'La Manos Negras de Elmut'
    when 'ladrón'     then 'La Cofradía'
    when 'nigromante' then 'La Cripta Prohibida'
    when 'conjurador' then 'El Cónclave'
    when 'hechicero'  then 'El Arcanorium'
    when 'invocador'  then 'La Grieta'
    when 'vengador'   then 'El Palacio de las afrentas'
    when 'brujo'      then 'La sexcentésima sexagésima sexta sala'
    when 'caminante'  then 'La antesala sombría'
    else 'Salón de la fama'
  end
  lugar_fama 
end
