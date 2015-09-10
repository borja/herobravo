#!/usr/bin/ruby
# encoding: UTF-8

class Habilidad < Hash
  attr_accessor :id, :name, :description, 
    :type, :nivel, :requisitos, :rangos, :coste, :char
  
  def initialize args
    args.each do |k,v|
      instance_variable_set("@#{k}".to_sym, v) unless v.nil?
    end
  end
  
  def rangos ; 6 if self.type == 'única'  end
  def img_path ; "/images/skills/#{self.char}/#{self.name}.png" end
    
end