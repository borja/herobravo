# encoding: UTF-8
def h44
  {
    id:           44,
    name:         'Zurda',
    personaje:    'arquero',
    jugador:      'Celia',
    gender:       'female',
    historia:     2,
    progenitores: [47, 'Carmenchu'],
    familiar:     { id: 15, name: 'Farfala', torpe: true },
    nivel:        14,
    repu:         5,
    cuerpo:       10,
    mente:        10,
    mov:          16,
    hechizos:     [6, 7, 8],
    armadura:     { id: 2 },
    armas:        [
      { id: 14, gemas: [4, 22] },
      { id: 25, enchants: [81] }
    ],
    protecciones: [
      { id: 1, gemas: [23, 23] },
      { id: 2, joyas: [19] },
      { id: 3, gemas: [26, 28], enchants: [8] },
      { id: 5, gemas: [26, 11], enchants: [7] },
      { id: 8, enchants: [79] },
      { id: 10 },
      { id: 11 }
    ],
    miscelaneas:  [
      { id: 1 },
      { id: 1, gemas: [13], enchants: [80] },
      { id: 2,  gemas: [29] },
      { id: 3,  enchants: [28] },
      { id: 4 },
      { id: 19, enchants: [82] }
    ],
    skills:       [1, 2, 3, 4, 5, 6, 9, 10, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22],
    tesoro:       {
      gemas: [9, 27, 27, 3, 29],
      joyas: [13]
    }
  }
end
