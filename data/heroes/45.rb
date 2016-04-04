# encoding: UTF-8
def h45
  {
    id:          45,
    name:        'Moorp',
    personaje:   'conjurador',
    jugador:     'Arturo Salcedo',
    familiar:    { id: 5, name: 'Vladimir', torpe: true },
    pareja:      { nombre: 'Leandra', raza: 'maga', tipo: 'pnj' },
    nivel:       1,
    cuerpo:      4,
    mente:       6,
    mov:         7,
    armas:       [{ id: 3 }],
    armadura:    { id: 1, gemas: [4] },
    proteccions: [Proteccion.new(id: 4, ranuras: 1)],
    miscelaneas: [{ id: 2, ranuras: 1, enchants: [77] }],
    hechizos:    [0, 1, 2, 12, 13, 14, 18, 19, 20]
  }
end
