# encoding: UTF-8
def h69
  {
    id:          69,
    name:        'Haspo',
    personaje:   "bersérker",
    jugador:     'Luis Lucas',
    nivel:       1,
    cuerpo:      8,
    mente:       2,
    mov:         8,
    armadura:    { id: 2 },
    armas:       [{ id: 2 }],
    proteccions: [
      Proteccion.new(id: 2, enchants: [8], ranuras: 1)
    ]
  }
end
