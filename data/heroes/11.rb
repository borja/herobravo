# encoding: UTF-8
def h11
  {
    id:          11,
    name:        'Selene',
    personaje:   'derviche',
    jugador:     'Nora',
    gender:      'female',
    historia:    1,
    nivel:       8,
    repu:        2,
    cuerpo:      10,
    mente:       4,
    mov:         14,
    hechizos:    [6, 7, 8],
    skills:      [0, 1, 2, 3, 4, 5, 6, 7],
    pociones:    [7],
    profesion:   Profesion.new(id: 3, aprendiz: [0]),
    armadura:    { id: 2 },
    armas:       [
      { id: 2, gemas: [11, 11, 11, 53] },
      { id: 5 }
    ],
    protecciones: [
      { id: 2, gemas: [28] },
      { id: 3, enchants: [8], ranuras: 2 }
    ],
    miscelaneas: [
      { id: 1, enchants: [29] },
      { id: 2, enchants: [70, 71], gemas: [42] },
      { id: 3, enchants: [28] }
    ],
    tesoro:      {
      gemas: [2, 2]
    }
  }
end
