# encoding: UTF-8

def carpintería_artesanías
  [
    { id:     0,
      name:   'Artesano carpintero',
      coste:  500,
      matts:  [5, 5, 5],
      efecto: 'Permite usar 3 piezas de madera para crear una talla exquisita.'
    },
    {
      id:     1,
      name:   "Báculo",
      coste:  300,
      matts:  [6, 6, 6],
      efecto: "3 tallas exquisitas: bastón que ataca con 2 dados y en diagonal. Se vende por 150g."
    },
    {
      id:     2,
      name:   "Varita mágica",
      coste:  100,
      matts:  [6, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7],
      efecto: 'Diamante + 200 oro: Varita (1 mano) que permite lanzar 2 hechizos/turno.'
    },
    {
      id:     3,
      name:   'Atril de animista',
      coste:  450,
      matts:  [6, 6, 5, 5, 8],
      efecto: 'Joya del artesano + joya simbionte: Permite crear un atril que persigue al poseedor. El atril permite portar un libro en una mano extra.'
    }
  ]
end
