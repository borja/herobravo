# encoding: UTF-8
def h14
  {
    id:          14,
    name:        'Lindele',
    personaje:   'derviche',
    jugador:     'Cristina',
    status:      'activo',
    gender:      'female',
    pareja:      { char: 15, tipo: 'pj' },
    familiar:    { id: 19, name: 'Limoncito' },
    profesion:   { id: 2, aprendiz: [0, 1] },
    historia:    1,
    nivel:       8,
    cuerpo:      8,
    mente:       6,
    mov:         17,
    hechizos:    [6, 7, 8],
    armadura:    { id: 2 },
    armas:       [
      { id: 2, enchants: [16] },
      { id: 1, enchants: [75] }
    ],
    protecciones: [
      { id: 2, gemas: [4] },
      { id: 5, enchants: [8] },
      { id: 14 }
    ],
    miscelaneas: [{ id: 11 }],
    skills:      [0, 1, 2, 4, 5, 6, 8],
    pociones:    [0],
    piezas:      [0, 4],
    pergaminos:  [Pergamino.new(id: 1, spells: [11])],
    tesoro:      { gemas: [12] }
  }
end
