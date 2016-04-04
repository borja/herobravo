def h60
  {
    id:           60,
    name:         "Anníbal Killarney",
    personaje:    'hoplita',
    jugador:      'Iris',
    status:       'reserva',
    progenitores: [48, "Amílcar"],
    familiar:     { id: 17, name: 'Chop' },
    nivel:        3,
    cuerpo:       9,
    mente:        3,
    mov:          8,
    repu:         1,
    skills:       [0, 1, 2, 3],
    profesion:    Profesion.new(id: 3, aprendiz: [0, 1]),
    armadura:     Armadura.new({ id: 2 }),
    proteccions:  [
      Proteccion.new(id: 1, enchants: [84]),
      Proteccion.new(id: 4),
      Proteccion.new(id: 8)
    ],
    armas:        [
      Arma.new(id: 1),
      Arma.new(id: 7)],
    pociones:     [1],
    tesoro:       {
      gemas: [28, 32],
      runas: [9]
    }
  }
end
