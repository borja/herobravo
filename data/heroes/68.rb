# encoding: UTF-8
def h68
  { 
    :id           => 68,
    :name         => "Liam",
    :personaje    => "conjurador",
    :jugador      => "Erika",
    :nivel        => 1,
    :cuerpo       => 6,
    :mente        => 4,
    :mov          => 7,
    :hechizos     => [6,7,8,12,13,14,18,19,20],
    :armadura     => Armadura.new({:id => 1}),
    :armas        => [
      Arma.new({:id => 8 })
    ],
  }
end