# Solamente las habilidades base de nivel 1
class Hab < Hash
  attr_accessor :name, :description

  def initialize(args)
    args.each do |k, v|
      instance_variable_set("@#{k}".to_sym, v) unless v.nil?
    end
  end

  def type
    'base'
  end

  def nivel
    1
  end

  def img_path
    "/images/skills/base/#{name}.png"
  end
end
