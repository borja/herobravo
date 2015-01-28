# encoding: UTF-8
# Number of heroes = 49, please refactor this.
50.times { |i| require "./data/heroes/#{i}" }
def heros      ; [*0..49].map { |i| Hero.new(send("h#{i}")) } end
def hero id    ; heros[id] end
def personajes ; heros.map{ |p| p.personaje }.uniq end
def clases     ; heros.map{ |p| p.clase     }.uniq end
def jugadores  ; heros.map{ |p| p.jugador   }.uniq end

def clase_bárbaro  ; ["señor de las bestias","bersérker","hoplita"] end
def clase_enano    ; ["falangista","matador","ingeniero"]           end
def clase_mago     ; ["invocador", "conjurador", "hechicero"]       end
def clase_elfo     ; ["derviche", "druida", "arquero"]              end
def clase_ladrón   ; ["nigromante", "asesino", "ladrón"]            end
def clase_clérigo  ; ["clérigo", "paladín", "sacerdote"]            end
def clase_tiefling ; ["vengador", "caminante", "brujo"]             end