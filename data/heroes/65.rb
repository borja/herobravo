# encoding: UTF-8
def h65
  { 
    :id           => 65,
    :name         => "Aradurn",
    :personaje    => "falangista",
    :jugador      => "Iñaki",
    :ciudad       => "Kellen",
    :nivel        => 2,
    :cuerpo       => 8,
    :mente        => 3,
    :mov          => 6,
    :skills       => [1,2],
    :armadura     => Armadura.new({:id => 5, :enchants => [91,55,69,11] }),
    :armas        => [
      Arma.new({:id => 7}),
      Arma.new({:id => 7})
    ],
    :proteccions  => [
      Proteccion.new({:id => 3, :enchants => [92,93,94] })
    ],
  }
end