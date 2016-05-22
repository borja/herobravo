# encoding: UTF-8

def total_heros
  Dir['./data/heroes/*'].length
end

def heros
  [*0..(total_heros - 1)].map { |i| Hero.new(send("h#{i}")) }
end

def hero(id)
  heros[id]
end

total_heros.times do |i|
  define_method("h#{i}") do
    h = load_yaml("/heroes/#{i}")
    h['nivel'] = 1 unless h['nivel']
    h.merge!('id' => i)
  end
end

def personajes
  heros.map(&:personaje).uniq
end

def clases
  heros.map(&:clase).uniq
end

def jugadores
  heros.map(&:jugador).uniq
end

def narrados(n)
  narrados = heros.select { |p| p.historia if p.historia == n }
  narrados.sort_by { |p| p.premio ? p.premio : 3 }
end

def razas
  {
    'enano'    => { cuerpo: 7, mente: 3, movimiento: 6 },
    'elfo'     => { cuerpo: 6, mente: 4, movimiento: 8 },
    'humano'   => { cuerpo: 5, mente: 5, movimiento: 7 },
    'tiefling' => { cuerpo: 6, mente: 4, movimiento: 7 }
  }
end

def h_clases
  {
    enano:    %w(falangista matador ingeniero),
    elfo:     %w(derviche druida arquero),
    tiefling: %w(vengador caminante brujo),
    mago:     %w(invocador conjurador hechicero),
    bárbaro:  %w(señor\ de\ las\ bestias bersérker hoplita),
    clérigo:  %w(clérigo paladín sacerdote),
    ladrón:   %w(nigromante asesino ladrón)
  }
end

def nomalize_pj(pj)
  normalization = { '%C3%A9' => 'é', '%C3%AD' => 'í', '%C3%B3' => 'ó' }
  pj.gsub(/%C3%A9|%C3%AD|%C3%B3/) { |match| normalization[match] }
end

def honor(jugador)
  honor = (jugador == 'Borja' ? 100 : 0) # MB is allways OP
  heros.each do |h|
    honor += h.nivel if h.jugador == jugador
  end
  honor
end

def leyes
  [{ nombre: 'hechizos', method: 'spell'  },
   { nombre: 'shadows',  method: 'sombra' },
   { nombre: 'blood',    method: 'sangre' }]
end
