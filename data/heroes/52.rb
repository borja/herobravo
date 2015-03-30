# encoding: UTF-8
def h52
  { 
    :id           => 52,
    :name         => "Tu Verag",
    :personaje    => "matador",
    :jugador      => "Judith",
    :status       => "ausente",
    :nivel        => 9,
    :cuerpo       => 13,
    :mente        => 5,
    :mov          => 10,
    :skills       => [0,1,2,3],
    :armadura     => Armadura.new({:id => 2}),
    :armas        => [
      Arma.new({:id => 14}),
      Arma.new({:id => 25})
    ],
  }
end