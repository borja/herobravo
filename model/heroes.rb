# encoding: UTF-8

def total_heros ; Dir['./data/heroes/*'].length end
def heros ; [*0..(total_heros - 1)].map { |i| Hero.new(send("h#{i}")) } end
def hero id ; heros[id] end

def personajes ; heros.map{ |p| p.personaje }.uniq end
def clases     ; heros.map{ |p| p.clase     }.uniq end
def jugadores  ; heros.map{ |p| p.jugador   }.uniq end
def narrados n ; heros.select{ |p| p.historia if p.historia ;; n }.sort_by { |p| p.premio ? p.premio : 3 } end

def razas
  { "enano"    => { cuerpo: 7, mente: 3, movimiento: 6 },
    "elfo"     => { cuerpo: 6, mente: 4, movimiento: 8 },
    "humano"   => { cuerpo: 5, mente: 5, movimiento: 7 },
    "tiefling" => { cuerpo: 6, mente: 4, movimiento: 7 },
  } 
end

def clase_enano    ; %w(falangista matador ingeniero) end
def clase_elfo     ; %w(derviche druida arquero) end
def clase_tiefling ; %w(vengador caminante brujo) end
def clase_mago     ; %w(invocador conjurador hechicero) end
def clase_bárbaro  ; %w(señor\ de\ las\ bestias bersérker hoplita) end
def clase_clérigo  ; %w(clérigo paladín sacerdote) end
def clase_ladrón   ; %w(nigromante asesino ladrón) end

def nomalize_pj(pj)
  case pj
    when 'palad%C3%ADn'   then 'paladín'
    when 'ladr%C3%B3n'    then 'ladrón'
    when 'bers%C3%A9rker' then 'bersérker'
    when 'cl%C3%A9rigo'   then 'clérigo'
    else pj
  end
end

def honor(jugador)
  honor = (jugador == 'Borja' ? 100 : 0)
  heros.each do |h|
    if h.jugador == jugador then
      honor += h.nivel
    end
  end
  honor
end

def leyes
  [{ nombre: 'hechizos', method: 'spell'  },
   { nombre: 'shadows',  method: 'sombra' },
   { nombre: 'blood',    method: 'sangre' }]
end