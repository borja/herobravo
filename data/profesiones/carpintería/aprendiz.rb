# encoding: UTF-8

def carpintería_aprendizajes
  [
    { id:     0,
      name:   'Aprendiz de carpintero',
      coste:  100,
      efecto: "Permite destruir mobiliario para obtener madera. (Éxito 9+)"
    },
    {
      id:     1,
      name:   'Fabricar flechas',
      coste:  100,
      matts:  [5],
      efecto: '1 pieza : flechas infinitas (a todos).'
    },
    {
      id:     2,
      name:   "Ballesta de repetición",
      coste:  300,
      matts:  [5, 5, 5, 5],
      efecto: '4 piezas : ballesta que no necesita recargase. Se vende por 200g.'
    },
    {
      id:     3,
      name:   'Cayado',
      coste:  150,
      matts:  [5, 5, 5],
      efecto: "3 piezas : bastón que ataca con 1 dado y en diagonal. Se vende por 50g."
    }
  ]
end
