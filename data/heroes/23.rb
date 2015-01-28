# encoding: UTF-8
def h23
  { 
    :id           => 23,
    :name         => "Roek",
    :personaje    => "matador",
    :jugador      => "Roek",
    :nivel        => 1,
    :cuerpo       => 7,
    :mente        => 3,
    :mov          => 6,
    :armas        => [Arma.new({:id => 11})],
    :armadura     => Armadura.new({:id => 2}),
  }
end