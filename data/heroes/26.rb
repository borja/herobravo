# encoding: UTF-8
def h26
  { 
    :id           => 26,
    :name         => "Veitt",
    :personaje    => "matador",
    :jugador      => "Juanan",
    :nivel        => 1,
    :cuerpo       => 7,
    :mente        => 3,
    :mov          => 6,
    :armas        => [Arma.new({:id => 11}),
                     Arma.new({:id => 7})],
    :armadura     => Armadura.new({:id => 2}),
  }
end