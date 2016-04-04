# encoding: UTF-8
def h5
  {
    id:          5,
    name:        'Yunnow (junior)',
    personaje:   'conjurador',
    jugador:     'Daniel Cabañas',
    status:      'activo',
    familiar:    { id: 6, name: 'Verruguitas' },
    historia:    1,
    nivel:       15,
    repu:        6,
    cuerpo:      5,
    mente:       20,
    mov:         8,
    armas:       [
      { id: 21, ranuras: 3 },
      { id: 20, enchants: [40] }
    ],
    armadura:    { id: 1, ranuras: 4, enchants: [41] },
    proteccions: [
      Proteccion.new(id: 3, gemas: [13]),
      Proteccion.new(id: 11),
      Proteccion.new(id: 1),
      Proteccion.new(id: 8, runas: [2]),
      Proteccion.new(id: 6, ranuras: 1, enchants: [20, 47, 83]),
      Proteccion.new(id: 10, ranuras: 1)
    ],
    miscelaneas: [
      Miscelanea.new(id: 1, enchants: [8], runas: [7]),
      Miscelanea.new(id: 6, enchants: [6])
    ],
    skills:      [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14],
    profesion:   Profesion.new(id: 1, aprendiz: [0, 2]),
    piezas:      [3, 8],
    hechizos:    [
      1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 24, 25, 26, 27, 28, 29, 30, 31,
      32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49,
      50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67,
      68, 69, 70, 71
    ],
    tesoro:      {
      gemas: [0, 4, 5, 5, 11, 21, 29],
      joyas: [10, 11]
    },
    pergaminos:  [
      Pergamino.new(id: 1, spells: [94]),
      Pergamino.new(id: 1, spells: [9])
    ]
  }
end
