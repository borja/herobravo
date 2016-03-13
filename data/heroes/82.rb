# encoding: UTF-8
def h82
  {
    id:          82,
    name:        'Thor',
    personaje:   'ingeniero',
    jugador:     'Aitor',
    status:      'retirado',
    nivel:       10,
    repu:        3,
    cuerpo:      10,
    mente:       6,
    mov:         8,
    pet:         Pet.new(id: 18, name: 'Menta', torpe: true),
    armas:       [Arma.new(id: 0)],
    armadura:    Armadura.new(id: 0),
    skills:      [
      0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 15, 17
    ],
    profesion:   Profesion.new(id: 2, aprendiz: [0, 1]),
  }
end