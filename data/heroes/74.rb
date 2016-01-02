# encoding: UTF-8
def h74
  { 
    :id           => 74,
    :name         => "Silvara",
    :personaje    => "hechicero",
    :jugador      => "Conjurador",
    :status       => "Nora",
    :nivel        => 1,
    :cuerpo       => 4,
    :mente        => 6,
    :mov          => 7,
    :armadura     => Armadura.new({:id => 1}),
    :armas        => [
      Arma.new({:id => 2})
    ]
  }
end
