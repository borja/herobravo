# encoding: UTF-8
def h85
  {
    id:         85,
    name:       'Grüber',
    personaje:  'falangista',
    jugador:    'Aitor',
    ciudad:     'Xanandra',
    nivel:      2,
    cuerpo:     8,
    mente:      3,
    mov:        6,
    skills:     [3, 4],
    armadura:   { id: 2 },
    armas:      [
      Arma.new(id: 7),
      Arma.new(id: 11)
    ],
    miscelaneas:[
      Miscelanea.new(id: 22, enchants: [10])
    ],
    pergaminos: [
      Pergamino.new(id: 3),
      Pergamino.new(id: 1, spells: [8]),
      Pergamino.new(id: 1, spells: [8])
    ]
  }
end
