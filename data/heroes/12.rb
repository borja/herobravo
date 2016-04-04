# encoding: UTF-8
def h12
  {
    id:          12,
    name:        'Torox',
    personaje:   'hoplita',
    jugador:     'Ivan',
    nivel:       8,
    repu:        1,
    cuerpo:      13,
    mente:       4,
    mov:         6,
    armadura:    { id: 5, joyas: [2], runas: [1] },
    armas:       [
      { id: 15 },
      { id: 7 }
    ],
    protecciones: [
      { id: 2, gemas: [26, 27] },
      { id: 3, runas: [0, 1] }
    ],
    miscelaneas: [
      { id: 1, gemas: [25] },
      { id: 2, gemas: [20], enchants: [70, 71] }
    ],
    skills:      [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11],
    profesion:   Profesion.new(id: 3, aprendiz: [0]),
    tesoro:      {
      runas: [4, 4, 4],
      gemas: [25, 51, 36]
    }
  }
end
