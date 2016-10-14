# encoding: UTF-8

def heros
  total_heros = Dir['./data/heroes/*'].length
  [*0..(total_heros - 1)].map do |i|
    h = load_yaml("/heroes/#{i}")
    h['nivel'] = 1 unless h['nivel']
    h['ciudad'] = 'Jadessvärd' unless h['ciudad']
    h['id'] = i
    Hero.new(h)
  end
end

def hero(id)
  heros[id]
end

def jugadores
  (heros + renegados).map(&:jugador).uniq
end

def narrados(n)
  narrados = heros.select { |p| p.historia if p.historia == n }
  narrados.sort_by { |p| p.premio ? p.premio : 3 }
end

def nomalize_pj(pj)
  normalization = {
    '%C3%A1' => 'á',
    '%C3%A9' => 'é',
    '%C3%AD' => 'í',
    '%C3%B3' => 'ó'
  }
  pj.gsub(/%C3%A1|%C3%A9|%C3%AD|%C3%B3/) { |match| normalization[match] }
end
