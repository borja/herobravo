#!/usr/bin/ruby
# encoding: UTF-8

class Montura < Hash
  attr_accessor :id
  
  def initialize args
    args.each do |k,v|
      instance_variable_set("@#{k}".to_sym, v) unless v.nil?
    end
  end
  
  def bono     ; montura(self.id)[:bono] end
  def name     ; montura(self.id)[:name] end
  def img_path ; "'../../images/monturas/#{montura(self.id)[:name]}.png'" end
end