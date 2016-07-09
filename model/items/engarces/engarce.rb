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
    if item.fits == 'arma'
      fits[item.categoria] || fits['arma'] || 'Armas sin implementar'
    elsif item.fits == 'armadura'
      fits[item.categoria] || fits['pecho'] || 'Armaduras sin implementar'
    elsif fits[item.fits]
      fits[item.fits]
    elsif item.class == Proteccion
      fits['armadura'] || 'Sin bonificador'
    else
      'Sin efecto'
    end
  end

  # returns from heros.tesoro, the list of (maybe repeated)
  # ids of the heros with self.id gem/runa/joya available
  def disponibles
    total = []
    heros.each do |h|
      next unless h.tesoro
      next unless h.tesoro[item + 's']
      h.tesoro[item + 's'].each do |e|
        (total << h.id) if e == id
      end
    end
    total
  end
end
