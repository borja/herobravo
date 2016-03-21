# encoding: UTF-8
def h56
  {
    id:          56,
    name:        'Kant Borriquero',
    personaje:   'hoplita',
    jugador:     'Borja',
    ciudad:      'Zindor',
    nivel:       2,
    cuerpo:      8,
    mente:       3,
    mov:         8,
    skills:      [0, 1],
    master:      [4], 
    pet:         Pet.new(id: 16, name: 'Zurraspa', torpe: true),
    armadura:    Armadura.new(id: 2),
    armas:       [Arma.new(id: 24)],
    proteccions: [
      Proteccion.new(id: 2)]
  }
end
