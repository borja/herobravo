# encoding: UTF-8
def h78
  {
    id:        78,
    name:      "Guspwent",
    personaje: "falangista",
    jugador:   "Raúl",
    nivel:     1,
    cuerpo:    7,
    mente:     3,
    mov:       6,
    pet:       Pet.new(id: 17, name: 'Climber'),
    armadura:  Armadura.new(id: 2),
    armas:     [
      Arma.new(id: 7),
      Arma.new(id: 11)
    ],
    proteccions:  [
      Proteccion.new(id: 2)
    ]
  }
end
