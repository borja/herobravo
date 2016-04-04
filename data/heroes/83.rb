# encoding: UTF-8
def h83
  {
    id:         83,
    name:       'Straüss',
    personaje:  'matador',
    jugador:    'Daniel de Haro',
    ciudad:     'Xanandra',
    nivel:      2,
    cuerpo:     7,
    mente:      3,
    mov:        7,
    skills:     [0, 2],
    pociones:   [1, 4],
    armas:      [Arma.new(id: 13),
                 Arma.new(id: 3)],
    armadura:   { id: 3 },
    pergaminos: [Pergamino.new(id: 3),
                 Pergamino.new(id: 1, spells: [8]),
                 Pergamino.new(id: 1, spells: [8])]
  }
end
