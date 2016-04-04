# encoding: UTF-8
def h46
  {
    id:        46,
    name:      'Gracia Favule',
    personaje: 'derviche',
    jugador:   "Daniel Cabañas",
    status:    'retirado',
    familiar:  { id: 15, name: 'Fabulosa', torpe: true },
    historia:  2,
    premio:    2,
    muerto:    true,
    nivel:     1,
    cuerpo:    6,
    mente:     4,
    mov:       8,
    armas:     [Arma.new(id: 1)],
    armadura:  { id: 2 },
    hechizos:  [18, 19, 20]
  }
end
