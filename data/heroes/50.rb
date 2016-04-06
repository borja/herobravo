# encoding: UTF-8
def h50
  {
    id:          50,
    name:        'Filomeno Apio',
    personaje:   'matador',
    jugador:     'Irene',
    status:      'activo',
    familiar:    { id: 2, name: "Aserrín Aserrán"},
    profesion:   { id: 6, aprendiz: [0] },
    armadura:    { id: 3, enchants: [85, 86] },
    historia:    2,
    nivel:       4,
    cuerpo:      8,
    mente:       3,
    mov:         8,
    oro:         58,
    armas:       [
      { id: 11 },
      { id: 7 }
    ],
    protecciones: [
      { id: 1, enchants: [84] },
      { id: 2, enchants: [37] }
    ],
    miscelaneas: [
      { id: 6, ranuras: 1, enchants: [97, 52] }
    ],
    tesoro:      {
      runas: [3]
    },
    skills:      [2, 3, 4, 5, 8, 9],
    mounts:      [3],
    piezas:      [3]
  }
end
