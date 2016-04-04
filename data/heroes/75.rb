# encoding: UTF-8
def h75
  {
    id:        75,
    name:      'Zalin',
    personaje: 'matador',
    jugador:   'Borja',
    ciudad:    'Oszthgard',
    nivel:     1,
    cuerpo:    7,
    mente:     3,
    mov:       6,
    armadura:  { id: 2 },
    armas:     [
      Arma.new(id: 7),
      Arma.new(id: 11)
    ],
    tesoro:    {
      gemas: [1, 17, 29]
    }
  }
end
