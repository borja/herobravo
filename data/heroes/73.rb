# encoding: UTF-8
def h73
  { 
    :id           => 73,
    :name         => "Kokrán",
    :personaje    => "bersérker",
    :jugador      => "Rubén",
    :nivel        => 1,
    :cuerpo       => 8,
    :mente        => 2,
    :mov          => 7,
    :armadura     => Armadura.new({:id => 1}),
    :armas        => [
      Arma.new({:id => 3})
    ],
  }
end
