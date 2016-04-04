# encoding: UTF-8
def h79
  {
    id:           79,
    name:         'Mauriel',
    personaje:    'druida',
    jugador:      'Carlos',
    gender:       'female',
    status:       'reserva',
    nivel:        2,
    repu:         0,
    cuerpo:       6,
    mente:        5,
    mov:          8,
    skills:       [0, 2],
    hechizos:     [12, 13, 14, 18, 19, 20],
    pociones:     [3],
    armas:        [
      Arma.new(id: 7),
      Arma.new(id: 27, enchants: [101])
    ],
    proteccions:  [
      Proteccion.new(id: 4, enchants: [7]),
      Proteccion.new(id: 2, enchants: [102])
    ],
    armadura:     { id: 2 },
    profesion:    Profesion.new(id: 3, aprendiz: [0])
  }
end
