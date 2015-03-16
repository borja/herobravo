# encoding: UTF-8
def hoplitas
  [
    {
      :id           => 0,
      :name         => "represalias",
      :description  => "Devuelve en daño lo defendido en un ataque",
      :type         => "pasiva",
    },
    {
      :id           => 1,
      :name         => "cargar",
      :description  => "Invirtiendo 3 de movimiento como mínimo, en línea recta, suma +1 potencia/movimiento invertido en el ataque",
      :type         => "activa",
    },
    {
      :id           => 2,
      :name         => "competencia con escudo",
      :description  => "+1 defensa",
      :type         => "pasiva"
    },
    {
      :id           => 3,
      :name         => "senda de la pradera",
      :description  => "Permite realizar la secuencia: ataque-movimiento-ataque (sin realizar giros en el movimiento)",
      :type         => "pasiva",
    },
    {
      :id           => 4,
      :name         => "golpe al corazón",
      :description  => "El hoplita golpea con la lanza obteniendo en ese ataque +1 fuerza y +1 potencia",
      :type         => "activa",
    },
    {
      :id           => 5,
      :name         => "empalar",
      :description  => "El daño excesivo realizado por la lanza a un enemigo, lo atraviesa y lo causa en la siguiente casilla frontal",
      :type         => "pasiva"
    },
    {
      :id           => 6,
      :name         => "empujar",
      :description  => "Las casillas colindantes al hoplita le cuestan +1 movimiento al enemigo",
      :type         => "pasiva",
    },
    {
      :id           => 7,
      :name         => "arrojar escudo",
      :description  => "El escudo se puede lanzar a un enemigo como un arma. Es recuperable",
      :type         => "pasiva",
    },
    {
      :id           => 8,
      :name         => "experto en asta",
      :description  => "+1 potencia en el ataque al usar lanzas",
      :type         => "pasiva",
    },
    {
      :id           => 9,
      :name         => "pálpito de la tundra",
      :description  => "Al matar usando Golpe al corazón, el hoplita recupera un Cargar",
      :type         => "pasiva",
    },
    {
      :id           => 10,
      :name         => "baluarte",
      :description  => "Sacrificando el movimiento, los dados de defensa son azules",
      :type         => "activa",
    },
    {
      :id           => 11,
      :name         => "baño de sangre",
      :description  => "Al matar con una espada, el hoplita recupera Golpe al corazón",
      :type         => "activa",
    }
  ]
end

def hoplita(id)
  hoplitas[id]
end
