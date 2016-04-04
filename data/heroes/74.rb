# encoding: UTF-8
def h74
  {
    id:        74,
    name:      'Silvara',
    personaje: 'hechicero',
    jugador:   'Nora',
    gender:    'female',
    status:    'reserva',
    nivel:     1,
    cuerpo:    4,
    mente:     6,
    mov:       7,
    armadura:  { id: 1 },
    armas:     [
      Arma.new(id: 2)
    ]
  }
end
