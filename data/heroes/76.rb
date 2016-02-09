# encoding: UTF-8
def h76
  {
    id:          76,
    name:        'Aamon',
    personaje:   'brujo',
    jugador:     'Iris',
    status:      'reserva',
    nivel:       2,
    hechizos:    [0, 1, 2],
    shadows:     [0, 1, 2],
    blood:       [0, 1, 2],
    skills:      [0, 3],
    cuerpo:      7,
    mente:       4,
    mov:         7,
    profesion:   Profesion.new(id: 1, aprendiz: [0]),
    armadura:    Armadura.new(id: 1),
    armas:       [
      Arma.new(id: 0)
    ],
    miscelaneas: [
      Miscelanea.new(id: 21, enchants: [100, 56])
    ]
  }
end
