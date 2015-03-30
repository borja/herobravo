# encoding: UTF-8
def h48
  { 
    :id           => 48,
    :name         => "Ana Killarney",
    :personaje    => "hoplita",
    :jugador      => "Iris",
    :gender       => "female",
    :status       => "reserva",
    :nivel        => 3,
    :cuerpo       => 9,
    :mente        => 3,
    :mov          => 8,
    :profesion    => Profesion.new({:id => 3,  :aprendiz => [0,1]}),
    :pet          => Pet.new({:id  => 17, :name => "Chop"}),
    :armadura     => Armadura.new({:id => 2}),
    :armas        => [Arma.new({:id => 5}),
                      Arma.new({:id => 7})],
    :proteccions  => [Proteccion.new({:id => 4})],
    :skills       => [0,2,3,5],
    :historia     => true,
  }
end