# encoding: UTF-8
def h25
  { 
    :id           => 25,
    :name         => "Grimm",
    :personaje    => "matador",
    :jugador      => "Tot",
    :nivel        => 1,
    :repu         => 1,
    :cuerpo       => 7,
    :mente        => 3,
    :mov          => 6,
    :armas        => [Arma.new({:id => 12})],
    :armadura     => Armadura.new({:id => 2}),
    :proteccions  => [Proteccion.new({:id => 2})],
  }
end