# encoding: UTF-8
def h38
  { 
    :id           => 38,
    :name         => "Pumba",
    :personaje    => "bersérker",
    :jugador      => "Alberto",
    :status       => "extranjero",
    :repu         => 1,
    :nivel        => 2,
    :cuerpo       => 8,
    :mente        => 3,
    :mov          => 7,
    :armadura     => Armadura.new({:id => 2}),
    :armas        => [Arma.new({:id => 10, :gemas =>[37]})],
    :skills       => [0,1,14],
  }
end