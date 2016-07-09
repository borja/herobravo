# Conjunto de items varidos: pociones, pergaminos, etc..
class Util < Item
  attr_accessor :id, :name
  def initialize(args)
    args.each do |k, v|
      instance_variable_set("@#{k}".to_sym, v) unless v.nil?
    end
  end

  def img_path
    "'../images/utiles/#{self.class.to_s.downcase}s/#{name}.png'"
  end
end
