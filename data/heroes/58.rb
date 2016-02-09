# encoding: UTF-8
def h58
  {
    id:           58,
    name:         "Bárbara",
    personaje:    "bersérker",
    jugador:      'Daniel Acha',
    progenitores: [6, 14],
    nivel:        11,
    repu:         3,
    cuerpo:       12,
    mente:        3,
    mov:          10,
    armas:        [Arma.new(id: 12, enchants: [12]),
                   Arma.new(id: 17, gemas: [40])],
    armadura:     Armadura.new(id: 3),
    proteccions:  [Proteccion.new(id: 1,    ranuras: 2),
                   Proteccion.new(id: 2),
                   Proteccion.new(id: 3, enchants: [8]),
                   Proteccion.new(id: 4)],
    miscelaneas:  [Miscelanea.new(id: 1,    enchants: [11]),
                   Miscelanea.new(id: 2, enchants: [6])],
    skills:       [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14],
    tesoro:       { gemas: [6, 6, 11, 14, 27, 30],
                    joyas: [2] }
  }
end
