#!/usr/bin/ruby
# encoding: UTF-8

# Clase principal de cualquier item
class Item < Hash
  attr_accessor :id, :enchants, :max, :precio,
                :runas, :joyas, :ranuras, :gemas,
                :legendario, :unico, :artefacto, :size

  def initialize(args)
    args.each do |k, v|
      instance_variable_set("@#{k}".to_sym, v) unless v.nil?
    end
  end

  def enchanted?
    enchants
  end

  def item
    self.class.to_s.downcase
  end

  def engarzado?
    gemas || joyas || runas
  end

  def mundano?
    gemas.nil? && joyas.nil? && runas.nil? && ranuras.nil?
  end

  def ranuras_libres
    total = 0
    total += ranuras    if ranuras
    total -= gemas.size if gemas
    total -= runas.size if runas
    total -= joyas.size if joyas
    total
  end

  def precio_venta
    pvp = precio
    pvp += (enchants.count * 100) if enchants
    pvp += (runas.count * 100)    if runas
    pvp += (joyas.count * 100)    if joyas
    if gemas
      gemas.each do |g|
        pvp += [10, 25, 50, 100, 250, 500, 50][g / 8]
      end
    end
    if ranuras_libres > 0
      ranuras_libres.times do |_i|
        pvp *= 1.1
      end
    end
    pvp.to_i
  end

  def img_path
    carpeta = enchanted? ? "magic/#{name + enchants.size.to_s}" : name
    "'../images/#{item}s/#{carpeta}.png'"
  end

  def tier?
    combo = false
    mix = { 'gemas' => gemas, 'runas' => runas, 'joyas' => joyas }
    tiers.each do |t|
      combo = t if t['mix'] == mix
    end
    combo
  end

  def tier_color
    tier? ? tier?['color'] : 'black'
  end
end
