# encoding: UTF-8
def h8
  {
    id:        8,
    name:      'Godric',
    personaje: 'falangista',
    jugador:   'Daniel de Haro',
    status:    'activo',
    historia:  1,
    premio:    1,
    nivel:     10,
    cuerpo:    13,
    mente:     5,
    mov:       10,
    mounts:    [1],
    piezas:    [3],
    profesion: Profesion.new(id: 3, aprendiz: [0, 1, 3]),
    pet:       Pet.new(id: 18, name: 'pendeja', torpe: true),
    armadura:  Armadura.new(id: 7),
    armas:     [
      Arma.new(id: 7, runas: [9]),
      Arma.new(id: 7)
    ],
    proteccions: [
      Proteccion.new(id: 13),
      Proteccion.new(id: 3, enchants: [0]),
      Proteccion.new(id: 16, enchants: [98, 99], ranuras: 2)
    ],
    miscelaneas: [
      Miscelanea.new(id: 1, enchants: [10]),
      Miscelanea.new(id: 10, enchants: [0])
    ],
    pergaminos:  [Pergamino.new(id: 2, spells: [14])],
    skills:      [
      0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 14
    ],
    tesoro:      {
      gemas: [3, 12, 29, 2, 13, 2, 30]
    }
  }
end
