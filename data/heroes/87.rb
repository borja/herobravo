# encoding: UTF-8
def h87
  {
    id:          87,
    name:        'Arawn',
    personaje:   'bersérker',
    jugador:     'Javier Galindo',
    status:      'retirado',
    muerto:      true,
    nivel:       1,
    cuerpo:      8,
    mente:       3,
    mov:         7,
    pet:         Pet.new(id: 17, name: 'Alvin', torpe: true),
    armadura:    Armadura.new(id: 2),
    armas:       [Arma.new(id: 2, gemas: [19] )],
    proteccions: [Proteccion.new(id: 1, enchants: [84])],
    miscelaneas:  [
      Miscelanea.new(id: 23, ranuras: 6, enchants: [108]),
      Miscelanea.new(id: 2, enchants: [92])
    ]
  }
end
