# encoding: UTF-8

def h48
  {
    id:           48,
    name:         'Ana Killarney',
    personaje:    'hoplita',
    jugador:      'Iris',
    gender:       'female',
    status:       'retirado',
    muerto:       true,
    historia:     2,
    nivel:        3,
    cuerpo:       9,
    mente:        3,
    mov:          8,
    profesion:    { id: 3, aprendiz: [0, 1] },
    armadura:     2,
    armas:        [
      { id: 5 },
      { id: 7 }
    ],
    protecciones: [
      { id: 1, enchants: [84] },
      { id: 4 },
      { id: 8 }
    ],
    skills:      [0, 1, 2, 3]
  }
end
