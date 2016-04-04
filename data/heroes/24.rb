# encoding: UTF-8
def h24
  {
    id:          24,
    name:        'Obama',
    personaje:   "señor de las bestias",
    jugador:     'JuanPa',
    nivel:       2,
    cuerpo:      9,
    mente:       2,
    mov:         7,
    armas:       [
      { id: 2 },
      { id: 7 }
    ],
    armadura:    { id: 2 },
    proteccions: [Proteccion.new(id: 2)],
    tesoro:      { gemas: [21] }
  }
end
