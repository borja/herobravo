# encoding: UTF-8
def h50
  { 
    :id           => 50,
    :name         => "Claudio Apio",
    :personaje    => "matador",
    :jugador      => "Irene",
    :nivel        => 1,
    :cuerpo       => 7,
    :mente        => 3,
    :mov          => 6,
    :armas        => [Arma.new({:id => 11})],
    :armadura     => Armadura.new({:id => 2}),
  }
end