# encoding: UTF-8
def h62
  {
    id:        62,
    name:      'Barothrinn',
    personaje: 'matador',
    jugador:   'Edu',
    ciudad:    'Kellen',
    nivel:     2,
    cuerpo:    7,
    mente:     3,
    mov:       7,
    skills:    [1, 2],
    armadura:  Armadura.new(id: 2),
    armas:     [
      Arma.new(id: 11),
      Arma.new(id: 3)
    ]
  }
end
