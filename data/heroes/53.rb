# encoding: UTF-8
def h53
  {
    id: 53,
    name: 'Garnier',
    personaje: 'arquero',
    jugador: 'Daniel de Haro',
    status: 'reserva',
    historia: 2,
    nivel: 2,
    cuerpo: 6,
    mente: 4,
    mov: 9,
    skills: [1, 2],
    armadura: Armadura.new(id: 2),
    armas: [
      Arma.new(id: 14),
      Arma.new(id: 25)
    ],
    proteccions: [
      Proteccion.new(id: 1, enchants: [84]),
      Proteccion.new(id: 2),
      Proteccion.new(id: 4)
    ]
  }
end
