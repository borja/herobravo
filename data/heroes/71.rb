# encoding: UTF-8
def h71
  {
    id:          71,
    name:        'Vindecar',
    personaje:   "clérigo",
    jugador:     'Alberto',
    status:      'reserva',
    nivel:       4,
    cuerpo:      8,
    mente:       4,
    mov:         8,
    repu:        1,
    profesion:   Profesion.new(id: 6, aprendiz: [0]),
    armas:       [
      { id: 27, ranuras: 2, enchants: [109] },
      { id: 7, enchants: [110] }
    ],
    armadura:     { id: 3 },
    protecciones: [
      { id: 0 },
      { id: 3, enchants: [8] },
      { id: 4 },
      { id: 5 },
      { id: 8, enchants: [48] },
      { id: 10 },
      { id: 13 },
      { id: 14 }
    ],
    skills:   [1, 2, 3, 4, 6, 8],
    pociones: [4],
    master:   [13],
    tesoro: {
      gemas: [39]
    }
  }
end
