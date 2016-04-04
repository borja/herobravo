# encoding: UTF-8
def h86
  {
    id:        86,
    name:      'Zehon',
    personaje: 'hoplita',
    jugador:   'Daniel de Haro',
    status:    'retirado',
    muerto:    true,
    nivel:     1,
    cuerpo:    8,
    mente:     2,
    mov:       7,
    familiar:  { id: 17, name: 'Chip' },
    armadura:  Armadura.new(id: 2),
    armas:     [
      Arma.new(id: 7),
      Arma.new(id: 2)
    ]
  }
end
