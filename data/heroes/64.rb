# encoding: UTF-8
def h64
  { 
    :id           => 64,
    :name         => "Damm",
    :personaje    => "hechicero",
    :jugador      => "Alberto",
    :ciudad       => "Kellen",
    :nivel        => 2,
    :cuerpo       => 4,
    :mente        => 7,
    :mov          => 7,
    :skills       => [0,1],
    :armadura     => Armadura.new({:id => 1, :ranuras => 1 }),
    :armas        => [
      Arma.new({:id => 3}),
      Arma.new({:id => 4, :enchants => [51,51]})
    ],
    :proteccions  => [
      Proteccion.new({:id => 1, :ranuras => 1 }) ],
  }
end