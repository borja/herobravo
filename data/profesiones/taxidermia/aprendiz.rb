# encoding: UTF-8

def taxidermia_aprendizajes
  [
    { :id      => 0,
      :name    => "Aprendiz de taxidermista",
      :coste   => 100,
      :efecto  => "Permite extraer bulbos de seda y pieles. (Éxito: 9+)",
    },
    {
      :id      => 1,
      :name    => "Desuello",
      :coste   => 150,
      :efecto  => "+1pot vs Bestias. Habilidad pasiva.",
    },
    {
      :id      => 2,
      :name    => "Fabricación de seda",
      :coste   => 150,
      :matts   => [0,0],
      :efecto  => "crea una túnica de seda que otorga +1 Def,+2 Mov a cambio de 2 madejas de seda. Se vende por 50g.",
    },
    {
      :id      => 3,
      :name    => "Peletería",
      :coste   => 250,
      :matts   => [2,2,2],
      :efecto  => "A cambio de 3 pieles se fabrica 1 Cota de cuero endurecida. Se vende por 100g.",
    },
    {
      :id      => 4,
      :name    => "Pulseras",
      :coste   => 50,
      :matts   => [2],
      :efecto  => "A cambio de una piel, puedes fabricar una pulsera de cuero (+0P), que cuenta como muñequera con un engarce.",
    },
    {
      :id      => 5,
      :name    => "Cinturón",
      :coste   => 75,
      :matts   => [2],
      :efecto  => "A cambio de 2 pieles, puedes fabricar un cinturón (+1P)",
    },
    {
      :id      => 6,
      :name    => "Botas",
      :coste   => 75,
      :matts   => [2],
      :efecto  => "A cambio de 2 pieles, puedes fabricar unas botas que te aislan del frío. (+1 vs Escarcha)",
    }
  ]
end