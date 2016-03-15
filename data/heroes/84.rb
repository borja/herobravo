# encoding: UTF-8
def h84
  {
    id:          84,
    name:        'Godric',
    personaje:   'falangista',
    jugador:     'Daniel de Haro',
    status:      'retirado',
    historia:    1,
    premio:      1,
    nivel:       10,
    cuerpo:      13,
    mente:       5,
    mov:         10,
    profesion:   Profesion.new(id: 3, aprendiz: [0, 1, 3]),
    pet:         Pet.new(id: 18, name: 'pendeja', torpe: true),
    armadura:    Armadura.new(id: 0),
    armas:       [Arma.new(id: 0)],
    skills:      [
      0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 14
    ]
  }
end
