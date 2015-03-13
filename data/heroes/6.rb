# encoding: UTF-8
def h6
  { 
    :id           => 6,
    :name         => "Domasuegras",
    :personaje    => "bersérker",
    :jugador      => "Daniel Acha",
    :nivel        => 9,
    :repu         => 2,
    :cuerpo       => 12,
    :mente        => 4,
    :mov          => 10,
    :armas        => [Arma.new({:id => 12,   :enchants => [12]}), 
                     Arma.new({:id => 17,   :gemas    => [40]})],
    :armadura     => Armadura.new({:id => 3}),
    :proteccions  => [Proteccion.new({:id => 1,    :ranuras  => 2}), 
                     Proteccion.new({:id => 2}), 
                     Proteccion.new({:id => 3,    :enchants => [8]}),
                     Proteccion.new({:id => 4})],
    :miscelaneas  => [Miscelanea.new({:id => 1,    :enchants => [11]}), 
                     Miscelanea.new({:id => 2,    :enchants => [6]})],
    :skills       => [1,2,3,4,5,6,7,8,9,10,11,12,13,14],
    :tesoro       => {:gemas => [6,6,11,14,27,30],
                     :joyas => [2] },
  }
end