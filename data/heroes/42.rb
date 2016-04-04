# encoding: UTF-8
def h42
  {
    id:          42,
    name:        'Klaussius',
    personaje:   "paladín",
    jugador:     "Iván",
    nivel:       1,
    cuerpo:      6,
    mente:       4,
    mov:         7,
    armas:       [{ id: 2 }],
    armadura:    { id: 2 },
    proteccions: [Proteccion.new(id: 0)]
  }
end
