# encoding: UTF-8
def h10
  {
    :id           => 10,
    :name         => "El Kolo",
    :personaje    => "bersérker",
    :jugador      => "Daniel Cabañas",
    :status       => "retirado",
    :nivel        => 2,
    :cuerpo       => 8,
    :mente        => 3,
    :mov          => 8,
    :armas        => [Arma.new({:id => 10, :ranuras => 1})],
    :armadura     => Armadura.new({:id => 2}),
    :proteccions  => [Proteccion.new({:id => 1})],
    :skills       => [1,4,7],
    :tesoro       => {:joyas => [2],
                     :runas => [2]},
    :muerto       => true,
  }
end