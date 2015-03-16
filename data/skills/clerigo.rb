# encoding: UTF-8
def clérigos
  [
    {
      :id           => 0,
      :name         => "luz sagrada",
      :description  => "El sacerdote reza y tira con 1d20 para obtener su plegaria.",
      :type         => "pasiva",
    },
    {
      :id           => 1,
      :name         => "última plegaria",
      :description  => "La última plegaria se considera summun",
      :type         => "única"
    },
    {
      :id           => 2,
      :name         => "teocracia",
      :description  => "sin definir",
      :type         => "pasiva"
    },
    {
      :id           => 3,
      :name         => "rosario",
      :description  => "Si el sacerdote sacrifica su movimiento, la plegaria obtiene chakra",
      :type         => "activa"
    },
    {
      :id           => 4,
      :name         => "zen",
      :description  => "Por cada nivel de Zen, se puede repetir una plegaria.",
      :type         => "pasiva"
    },
    {
      :id           => 5,
      :name         => "gloria del héroe",
      :description  => "Ignora cualquier mal. El efecto cesa al finalizar el turno del malvado brujo. Debe utilizarse antes de la tirada de ataque del malvado brujo.",
      :type         => "pasiva"
    },
    {
      :id           => 6,
      :name         => "armonía",
      :description  => "Si el sacerdote cura a 1 aliado, obtiene +1/Zen.",
      :type         => "pasiva"
    },
    {
      :id           => 7,
      :name         => "aura de valor",
      :description  => "Permite obtener +1 Zen.",
      :type         => "pasiva"
    },
    {
      :id           => 8,
      :name         => "súplica",
      :description  => "Por definir.",
      :type         => "única"
    },
    {
      :id           => 9,
      :name         => "bendecir",
      :description  => "A cambio de 1PM, el sacerdote bendice un arma, obteniendo así un arma sagrada.",
      :type         => "pasiva",
    },
    {
      :id           => 10,
      :name         => "crítico",
      :description  => "Con 2d6, si se obtiene 9+ la plegaria se ejecuta con summun/chakra.",
      :type         => "pasiva",
    },
    {
      :id           => 11,
      :name         => "último ruego",
      :description  => "Se aplica cuando el sacerdote está muriendo.",
      :type         => "pasiva",
    }
  ]
end
def clérigo id ;  clérigos[id] end