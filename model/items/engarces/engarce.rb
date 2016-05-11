# Engarce = objetos engarzables: gemas, joyas y runas
class Engarce < Hash
  attr_accessor :id, :name, :fits

  def initialize(args)
    args.each do |k, v|
      instance_variable_set("@#{k}".to_sym, v) unless v.nil?
    end
  end

  def item
    self.class.to_s.downcase
  end

  def img_path
    "'../../images/treasures/#{item}s/#{name}.png'"
  end

  def big_img
    "'../../images/items/#{item}s/#{name}.png'"
  end

  def bonificador(item)
    case
    when item.fits == 'arma'      then return fits[item.categoria] || fits['arma']  || 'Armas sin implementar'
    when item.fits == 'armadura'  then return fits[item.categoria] || fits['pecho'] || 'Armaduras sin implementar'
    when fits[item.fits]          then return fits[item.fits]
    when item.class == Proteccion then return fits['armadura'] || 'Sin bonificador'
    else return 'Sin efecto'
    end
  end
end
