# encoding: UTF-8
def h13
  {
    id:          13,
    name:        'Cromi',
    personaje:   'falangista',
    jugador:     'Carlos',
    status:      'activo',
    nivel:       8,
    repu:        1,
    cuerpo:      13,
    mente:       3,
    mov:         8,
    profesion:   Profesion.new(id: 3, aprendiz: [0]),
    familiar:    { id: 24, name: 'Nemesio', torpe: true},
    armadura:    { id: 3, gemas: [25, 28], enchants: [107] },
    armas:       [
      Arma.new(id: 28, gemas: [30]),
      Arma.new(id: 7, gemas: [32])
    ],
    proteccions: [
      Proteccion.new(id: 17, ranuras: 1),
      Proteccion.new(id: 4,  ranuras: 1),
      Proteccion.new(id: 5,  gemas: [29]),
      Proteccion.new(id: 8, ranuras: 2)
    ],
    miscelaneas: [
      Miscelanea.new(id: 2, enchants: [106, 20])
    ],
    skills:      [0, 1, 2, 3, 5, 6, 8, 9, 10, 11],
    pociones:    [3, 12],
    mounts:      [1],
    tesoro:      {
      gemas: [0,1,27],
    },
  }
end
