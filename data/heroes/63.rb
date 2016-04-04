# encoding: UTF-8
def h63
  {
    id:        63,
    name:      'Benigno',
    personaje: 'derviche',
    jugador:   'Lori',
    ciudad:    'Kellen',
    nivel:     2,
    cuerpo:    6,
    mente:     4,
    mov:       9,
    skills:    [0, 2],
    armadura:  { id: 2, enchants: [90, 7] },
    armas:     [
      Arma.new(id: 1),
      Arma.new(id: 3)
    ]
  }
end
