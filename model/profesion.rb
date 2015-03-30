#!/usr/bin/ruby
# encoding: UTF-8

class Profesion < Hash
  attr_accessor :id, :aprendiz, :artesano, :maestro
  
  def initialize args
    args.each do |k,v|
      instance_variable_set("@#{k}".to_sym, v) unless v.nil?
    end
  end
  
  def img_path
    "'../../images/profesiones/#{self.name}.png'"
  end
  
  def name         ;  profesion(self.id)[:name]     end
  def aprendizajes ;  profesion(self.id)[:aprendiz] end
  def artesanias   ;  profesion(self.id)[:artesano] end
  def maestrias    ;  profesion(self.id)[:maestro]  end
  
  
end