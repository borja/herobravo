# encoding: UTF-8
def h57
  { 
    :id           => 57,
    :name         => "Elhlebeyo",
    :personaje    => "caminante",
    :jugador      => "Aitor",
    :status       => "reserva",
    :historia     => 2,
    :nivel        => 1,
    :cuerpo       => 6,
    :mente        => 4,
    :mov          => 7,
    :repu         => 1,
    :skills       => [0],
    :armadura     => Armadura.new({:id => 2}),
    :armas        => [Arma.new({:id => 2}),
                      Arma.new({:id => 7})],
    :pociones => [1],
  }
end
