def h61
  {
    id:          61,
    name:        'Abigail',
    personaje:   "paladín",
    jugador:     'Iris',
    gender:      'female',
    status:      'reserva',
    nivel:       1,
    cuerpo:      5,
    mente:       5,
    mov:         7,
    armadura:    Armadura.new({ id: 2 }),
    armas:       [Arma.new(id: 13)],
    proteccions: [Proteccion.new(id: 1)],
    skills:      [1, 2]
  }
end
