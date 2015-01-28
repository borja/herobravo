# encoding: UTF-8
def h35 
  { 
    :id           => 35,
    :name         => "Harald Smirnoff",
    :personaje    => "falangista",
    :jugador      => "Jaime",
    :nivel        => 1,
    :cuerpo       => 7,
    :mente        => 3,
    :mov          => 6,
    :armas        => [Arma.new({:id => 11}),
                      Arma.new({:id => 7})],
    :armadura     => Armadura.new({:id => 2}),
    :proteccions  => [Proteccion.new({:id => 5, :enchants => [5]})],
  }
end