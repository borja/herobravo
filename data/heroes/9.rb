# encoding: UTF-8
def h9
  {
    id:        9,
    name:      'Steinberg',
    personaje: 'hechicero',
    jugador:   'Daniel Acha',
    status:    'reserva',
    nivel:     3,
    cuerpo:    4,
    mente:     8,
    mov:       7,
    hechizos:  [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12],
    skills:    [0, 1, 2, 3],
    armadura:  { id: 1 },
    familiar:  { id: 8, name: 'Arquímedes', torpe: true },
    armas:     [
      { id: 3 },
      { id: 20, ranuras: 2, enchants: [13] }
    ]
  }
end
