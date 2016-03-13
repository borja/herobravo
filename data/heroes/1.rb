# encoding: UTF-8
def h1
  {
    id:           1,
    name:         'Lord Fuckencio',
    progenitores: ['El Emperador', 33],
    pareja:       {
      nombre:      'Mickaella',
      raza:        'elfa-oscura',
      tipo:        'pnj',
      descripcion:
        'Originalmente un duque drow,
        cambiado de sexo tras ser seducido y redimido por Lord Fuckencio.'
    },
    personaje:    'asesino',
    jugador:      'Alberto',
    status:       'activo',
    camino:       ['El Heredero', 3],
    titulo:       'Príncipe Bastardo',
    repu:         11,
    nivel:        23,
    cuerpo:       11,
    mente:        11,
    mov:          19,
    armas:        [
      Arma.new(id: 6, joyas: [10, 10]),
      Arma.new(id: 3, gemas: [32])],
    armadura:     Armadura.new(id: 6, gemas: [36, 29, 37]),
    proteccions:  [
      Proteccion.new(id: 12, gemas: [30], joyas: [3]),
      Proteccion.new(id: 1,  gemas: [26, 27, 26], enchants: [20, 78]),
      Proteccion.new(id: 5,  enchants: [5]),
      Proteccion.new(id: 3,  gemas: [17, 17]),
      Proteccion.new(id: 11, gemas: [25, 16, 48]),
      Proteccion.new(id: 9,  ranuras: 2),
      Proteccion.new(id: 8,  gemas: [24], joyas: [1, 1])
    ],
    miscelaneas:  [
      Miscelanea.new(id: 1,  enchants: [20]),
      Miscelanea.new(id: 13, enchants: [36]),
      Miscelanea.new(id: 8),
      Miscelanea.new(id: 3,  ranuras:  1),
      Miscelanea.new(id: 2,  gemas:    [27], enchants: [6]),
      Miscelanea.new(id: 11, enchants: [35, 42], ranuras: 1),
      Miscelanea.new(id: 6,  enchants: [37])
    ],
    abalorios:    [Abalorio.new(id: 4)],
    profesion:    Profesion.new(id: 0, aprendiz: [0, 1, 2, 3, 4]),
    pet:          Pet.new(id: 17, name: 'Scumbag'),
    mounts:       [2],
    materiales:   [1, 1],
    skills:       [
      0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20
    ],
    shadows:      [4, 5],
    blood:        [0, 1, 5],
    tesoro:       {
      gemas: [
        0, 1, 1, 1, 2, 3, 3, 3, 4, 5, 5, 5, 5, 11, 13, 13, 13, 16, 17, 17, 
        25, 25, 26, 27, 28, 29, 29, 30, 31, 40, 40
      ],
      joyas: [7],
      runas: [6, 11]
    },
    pociones:     [10],
    piezas:       [2, 3]
  }
end
