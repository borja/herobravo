# encoding: UTF-8
def beastlords
  [
    {
      :id           => 0,
      :name         => "Furia",
      :description  => "Un punto de mente: +1 ataque.",
      :type         => "Activa"
    },
    {
      :id           => 1,
      :name         => "ira poderosa",
      :description  => "Por describir.",
      :type         => "Pasiva"
    },
    {
      :id           => 2,
      :name         => "atraer a las bestias",
      :description  => "Aparece un animal cuando el señor de las bestias realice una búsqueda en una sala con 1 dado de combate. Esto implica que agotará la posibilidad de buscar tesoros en esa misma sala por parte de otros jugadores. Los otros jugadores, además, tampoco podrán pasar a través de las bestias.",
      :type         => "Pasiva"
    },
    {
      :id           => 3,
      :name         => "moverse entre bestias",
      :description  => "Permite a los otros jugadores poder moverse a través de los animales invocados.",
      :type         => "Pasiva"
    },
    {
      :id           => 4,
      :name         => "poderío de la naturaleza",
      :description  => "Por describir.",
      :type         => "Pasiva"
    },
    {
      :id           => 5,
      :name         => "salto poderoso",
      :description  => "No hay penalización a la hora de bajar desde una posición elevada.",
      :type         => "Pasiva"
    },
    {
      :id           => 6,
      :name         => "grito de batalla",
      :description  => "+1 Potencia en la tirada de ataque.",
      :type         => "Activa"
    },
    {
      :id           => 7,
      :name         => "búsqueda exhaustiva",
      :description  => "Permite buscar tesoros en pasillos.",
      :type         => "Pasiva"
    },
    {
      :id           => 8,
      :name         => "rituales",
      :description  => "Por describir.",
      :type         => "Pasiva"
    },
    {
      :id           => 9,
      :name         => "sangre de la naturaleza",
      :description  => "Permite que el señor de las bestias reciba daño en lugar de sus animales (ritual).",
      :type         => "Pasiva"
    },
    {
      :id           => 10,
      :name         => "gloria del héroe",
      :description  => "Ignora cualquier mal. El efecto cesa al finalizar el turno del malvado brujo. Debe utilizarse antes de la tirada de ataque.",
      :type         => "única"
    },
  ]
end

def beastlord(id)
  beastlords[id]
end
