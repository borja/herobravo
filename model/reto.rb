# Clase para aventuras
class Reto < Hash
  attr_accessor :id, :name, :pjs, :pnjs, :desc, :reward, :target, :type

  def initialize(args)
    args.each do |k, v|
      instance_variable_set("@#{k}".to_sym, v) unless v.nil?
    end
  end
end
