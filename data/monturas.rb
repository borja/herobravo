# encoding: UTF-8
def monturas
  [
    Montura.new(
      id:        0,
      name:      'caballo',
      distancia: '3',
      bono:      'bono',
      precio:    500,
      recorrido: 'tierra'
    ),
    Montura.new(
      id:        1,
      name:      'caballo de guerra',
      distancia: '4',
      bono:      'reputación +1',
      precio:    750,
      recorrido: 'tierra'
    ),
    Montura.new(
      id:        2,
      name:      'barco',
      distancia: '6',
      bono:      'Permite surcar los mares.',
      precio:    2500,
      recorrido: 'mar'
    ),
    Montura.new(
      id:        3,
      name:      'alfombra voladora',
      distancia: '4',
      bono:      'Permite al portador, transportar a su amad@ por el aire.',
      precio:    4500,
      recorrido: 'aire'
    )
  ]
end

def montura(id)
  monturas[id]
end
