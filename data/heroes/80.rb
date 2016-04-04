# encoding: UTF-8
def h80
  {
    id:           80,
    name:         'Abraxas',
    personaje:    'conjurador',
    jugador:      'Luis',
    status:       'reserva',
    nivel:        3,
    repu:         0,
    cuerpo:       6,
    mente:        8,
    mov:          7,
    skills:       [1, 3, 4, 5],
    hechizos:     [0, 1, 2, 6, 7, 12, 13, 14, 18, 19, 20],
    pociones:     [3],
    armas:        [{ id: 8 }],
    armadura:     { id: 1 },
    miscelaneas:  [
      { id: 21, enchants: [103] }
    ],
    profesion:    Profesion.new(id: 6, aprendiz: [0])
  }
end
