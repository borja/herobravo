# encoding: UTF-8
def h66
  {
    id:        66,
    name:      'Jammarcus',
    personaje: 'druida',
    jugador:   'Gon',
    ciudad:    'Kellen',
    nivel:     1,
    cuerpo:    6,
    mente:     4,
    mov:       8,
    skills:    [0],
    armadura:  Armadura.new(id: 2),
    armas:     [
      Arma.new(id: 1),
      Arma.new(id: 7)
    ]
  }
end
