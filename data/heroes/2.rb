# encoding: UTF-8
def h2
  {
    id:           2,
    name:         'Eruan Amarie',
    personaje:    'druida',
    jugador:      'Iris',
    status:       'activo',
    progenitores: [47, 33],
    camino:       ['El Justiciero', 1],
    familiar:     {id: 11, name: 'Basidio'},
    pareja:       { nombre: 'Lauranna', raza: 'dead', tipo: 'pnj' },
    repu:         9,
    nivel:        19,
    cuerpo:       15,
    mente:        12,
    mov:          12,
    mounts:       [1],
    materiales:   [3],
    hechizos:     [
      1, 2, 3, 6, 7, 8, 12, 16, 17, 18, 19, 20
    ],
    armas:        [
      { id: 9, gemas: [25, 17, 26], enchants: [18, 1, 2, 3, 4, 17] },
      { id: 7, gemas: [25, 17, 26], enchants: [105] }
    ],
    armadura:     { id: 6, gemas: [34, 32, 34] },
    protecciones: [
      { id: 1, runas:     [2], gemas: [49], enchants: [7] },
      { id: 15, gemas: [21], enchants: [20, 34, 49, 50, 51, 52], ranuras: 4 },
      { id: 3,  enchants:  [8] },
      { id: 11, joyas:     [12], gemas: [48] },
      { id: 5,  enchants:  [5], gemas: [25, 51] },
      { id: 14 },
      { id: 10, ranuras: 1 },
      { id: 8 }
    ],
    miscelaneas:  [
      { id: 1,  gemas:   [25], enchants: [9] },
      { id: 9,  ranuras: 3,    enchants: [39] },
      { id: 7,                 enchants: [32] },
      { id: 11, ranuras: 1 },
      { id: 20, ranuras: 1,    enchants: [89, 29] },
      { id: 18,                enchants: [66, 65, 67] }
    ],
    skills:       [
      0, 1, 2, 3, 4, 4, 5, 7, 10, 11, 12, 13, 14, 15, 16, 17, 18,
      19, 20, 22, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37
    ],
    profesion:    Profesion.new(id: 5, aprendiz: [0, 3, 4, 5]),
    piezas:       [3, 6, 4],
    pociones:     [0, 4, 6, 7, 7, 11],
    pergaminos:   [
      Pergamino.new(id: 1, spells: [66]),
      Pergamino.new(id: 1, spells: [95]),
      Pergamino.new(id: 1, spells: [59])
    ],
    tesoro:       {
      gemas: [14, 24, 25, 25, 17, 35, 16, 16, 27, 18, 30],
      runas: [7, 9]
    },
    abalorios:    [
      { id: 1 },
      { id: 2 },
      { id: 5 },
      { id: 6 }
    ]
  }
end
