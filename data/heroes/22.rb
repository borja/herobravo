# encoding: UTF-8
def h22
  { 
    :id           => 22,
    :name         => "Nan",
    :personaje    => "matador",
    :jugador      => "Alberto Doncel",
    :nivel        => 1,
    :cuerpo       => 7,
    :mente        => 3,
    :mov          => 6,
    :armas        => [Arma.new({:id => 11})],
    :armadura     => Armadura.new({:id => 2}),
  }
end