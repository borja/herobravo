# encoding: UTF-8
def h71
  {
    id: 71,
    name: 'Vindecar',
    personaje: "clérigo",
    jugador: 'Alberto',
    status: 'reserva',
    nivel: 1,
    cuerpo: 5,
    mente: 5,
    mov: 8,
    repu: 1,
    armas: [
      Arma.new(id: 13),
      Arma.new(id: 7)
    ],
    armadura: Armadura.new(id: 3),
    proteccions: [
      Proteccion.new(id: 0),
      Proteccion.new(id: 3, enchants: [8]),
      Proteccion.new(id: 4),
      Proteccion.new(id: 5),
      Proteccion.new(id: 8, enchants: [48]),
      Proteccion.new(id: 10),
      Proteccion.new(id: 13),
      Proteccion.new(id: 14)

    ]
  }
end
