# encoding: UTF-8
def h88
  {
    id:          88,
    name:        'Mom',
    personaje:   'falangista',
    jugador:     'Carlos Esteban',
    nivel:       1,
    cuerpo:      7,
    mente:       3,
    mov:         6,
    armadura:    Armadura.new(id: 2),
    armas:       [
      Arma.new(id: 11),
      Arma.new(id: 7)
    ]
  }
end
