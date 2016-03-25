# encoding: UTF-8
def h59
  {
    id:        59,
    name:      'Caladrius',
    personaje: 'druida',
    jugador:   'Javier Galindo',
    status:    'activo',
    pareja:    { nombre: 'Gabrielle', raza: 'elfilla', tipo: 'pnj' },
    nivel:     4,
    cuerpo:    7,
    mente:     7,
    mov:       8,
    repu:      2,
    hechizos:  [0, 1, 2, 6, 7, 8, 12, 13, 14, 18, 19, 20],
    armas:     [Arma.new(id: 1),
                Arma.new(id: 4, enchants: [96])],
    armadura:  Armadura.new(id: 3),
    skills:    [0, 2],
    pet:       Pet.new({ id: 15, name: 'Viviana' })
  }
end
