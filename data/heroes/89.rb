# encoding: UTF-8
def h89
  {
    id:          89,
    name:        'Ahalya',
    personaje:   'arquero',
    gender:      'female',
    jugador:     'Rocío',
    pareja:      { char: 78, tipo: 'pj' },
    nivel:       1,
    cuerpo:      6,
    mente:       4,
    mov:         8,
    hechizos:    [12, 13, 14],
    armadura:    Armadura.new(id: 2),
    armas:       [Arma.new(id: 5)]
  }
end
