#!/usr/bin/ruby
# encoding: UTF-8

class Habilidad < Hash
  attr_accessor :id, :name, :description, :type
  
  def initialize args
    args.each do |k,v|
      instance_variable_set("@#{k}".to_sym, v) unless v.nil?
    end
  end
  
end