# encoding: UTF-8
def h72
  { 
    :id           => 72,
    :name         => "Kalel",
    :personaje    => "caminante",
    :jugador      => "Daniel Cabañas",
    :status       => "reserva",
    :nivel        => 1,
    :cuerpo       => 6,
    :mente        => 4,
    :mov          => 7,
    :skills       => [0],
    :repu         => 1,
    :armadura     => Armadura.new({:id => 1}),
    :armas        => [Arma.new({:id => 2}),
                      Arma.new({:id => 7})],
  }
end
