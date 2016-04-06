# encoding: UTF-8
def h15
  {
    id:          15,
    name:        'Tim el mago',
    personaje:   'hechicero',
    jugador:     'Luis',
    status:      'activo',
    pareja:      { char: 14, tipo: 'pj' },
    familiar:    { id: 2, name: 'Naussyca'},
    profesion:   { id: 1, aprendiz: [0, 3] },
    repu:        1,
    historia:    1,
    nivel:       7,
    cuerpo:      6,
    mente:       10,
    mov:         7,
    hechizos:    [0, 1, 2, 6, 7, 8, 14, 18, 19, 20, 33, 34, 42],
    skills:      [0, 1, 2, 5, 6, 7, 8, 10],
    armadura:    { id: 1, gemas: [1], enchants: [1] },
    armas:       [
      { id: 3 },
      { id: 4, enchants: [76] }
    ],
    protecciones: [{ id: 11 }],
    miscelaneas: [
      { id: 2, enchants: [31] },
      { id: 1, enchants: [37] }
    ],
    gemas:       [55],
    piezas:      [8],
    pociones:    [1, 3, 3]
  }
end
