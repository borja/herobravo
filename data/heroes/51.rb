# encoding: UTF-8
def h51
  { 
    :id           => 50,
    :name         => "Swagger",
    :personaje    => "arquero",
    :jugador      => "Hugo",
    :status       => "ausente",
    :nivel        => 1,
    :cuerpo       => 6,
    :mente        => 4,
    :mov          => 8,
    :armadura     => Armadura.new({:id => 2}),
    :armas        => [
      Arma.new({:id => 14}),
      Arma.new({:id => 25})
    ],
  }
end