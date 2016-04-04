# encoding: UTF-8
def h10
  {
    id:          10,
    name:        'El Kolo',
    personaje:   'bersérker',
    jugador:     'Daniel Cabañas',
    status:      'retirado',
    muerto:      true,
    nivel:       2,
    cuerpo:      8,
    mente:       3,
    mov:         8,
    armadura:    { id: 2 },
    armas:       [{ id: 10, ranuras: 1 }],
    proteccions: [Proteccion.new(id: 1)],
    skills:      [1, 4, 7],
    tesoro:      {
      joyas: [2],
      runas: [2]
    }
  }
end
