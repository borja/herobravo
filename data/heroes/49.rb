# encoding: UTF-8
def h49
  {
    id:           49,
    name:         'Damadius Umbradrack',
    progenitores: [39, 'Azakel'],
    personaje:    'brujo',
    jugador:      'Javier Galindo',
    status:       'retirado',
    muerto:       true,
    familiar:     { id: 20, name: 'terry' },
    historia:     1,
    nivel:        2,
    cuerpo:       6,
    mente:        5,
    mov:          7,
    hechizos:     [0, 1, 2],
    shadows:      [0, 1, 2],
    armas:        [Arma.new(id: 3)],
    armadura:     { id: 1 },
    skills:       [0, 1]
  }
end
