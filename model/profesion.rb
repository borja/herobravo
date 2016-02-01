#!/usr/bin/ruby
# encoding: UTF-8
# Clase para gestionar las profesiones y sus grados.
# TODO: necesita refactor segun la nueva forma de organizar los datos
class Profesion < Hash
  attr_accessor :id, :aprendiz, :artesano, :maestro

  def initialize(args)
    args.each do |k, v|
      instance_variable_set("@#{k}".to_sym, v) unless v.nil?
    end
  end

  def img_path
    "'../../images/profesiones/#{name}.png'"
  end

  def name
    profesion(id)[:name]
  end

  def aprendizajes
    profesion(id)[:aprendiz]
  end

  def artesanias
    profesion(id)[:artesano]
  end

  def maestrias
    profesion(id)[:maestro]
  end
end
