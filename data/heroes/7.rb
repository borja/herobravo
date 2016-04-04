# encoding: UTF-8
def h7
  {
    id:          7,
    name:        'Loki',
    personaje:   'ingeniero',
    jugador:     'Aitor',
    status:      'activo',
    progenitores: [82,'Emma'],
    pareja:       {
      nombre:      'Silva',
      raza:        'maga',
      tipo:        'pnj',
      descripcion:
        'Silva es casada con Loki tras la batalla de las minas de oro,
         dónde yerno y suegro, derrotan al draco verde heroicamente.<br/>
         Bietka, la Condesa de Zelmuria, forja el anillo de oro para el casamiento.'
    },
    nivel:       10,
    repu:        5,
    cuerpo:      10,
    mente:       6,
    mov:         8,
    familiar:    { id: 18, name: 'Menta', torpe: true },
    armas:       [Arma.new(id: 12, enchants: [58])],
    armadura:    { id: 3, ranuras: 1 },
    proteccions: [
      Proteccion.new(id: 1, ranuras: 1),
      Proteccion.new(id: 2, ranuras: 1),
      Proteccion.new(id: 3, ranuras: 1),
      Proteccion.new(id: 4, ranuras: 1),
      Proteccion.new(id: 5, ranuras: 1, enchants: [7]),
      Proteccion.new(id: 8, ranuras: 1, enchants: [87])
    ],
    miscelaneas: [
      Miscelanea.new(id: 1, ranuras: 2, enchants: [25]),
      Miscelanea.new(id: 1, gemas: [29], enchants: [104])
    ],
    abalorios:   [Abalorio.new(id: 3)],
    tesoro:      {
      gemas: [1, 3, 8, 11, 16, 25, 29],
      runas: [3, 6, 8]
    },
    pergaminos:  [
      Pergamino.new(id: 2, spells: [8, 10]),
      Pergamino.new(id: 1, spells: [32])],
    master:      [0],
    skills:      [
      0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 15, 17
    ],
    profesion:   Profesion.new(id: 2, aprendiz: [0, 1]),
    pociones:    [10],
    materiales:  [0, 2, 2, 2, 2, 2 ,2],
    piezas:      [4, 4]
  }
end
