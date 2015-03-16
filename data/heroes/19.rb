# encoding: UTF-8
def h19
  { 
    :id           => 19,
    :name         => "Lenny Blanc",
    :personaje    => "vengador",
    :jugador      => "Daniel Cabañas",
    :status       => "retirado",
    :muerto       => true,
    :nivel        => 3,
    :repu         => -1,
    :cuerpo       => 7,
    :mente        => 5,
    :mov          => 7,
    :hechizos     => [1,2,3,13,14,15],
    :armas        => [Arma.new({:id =>  0})],
    :armadura     => Armadura.new({:id => 0}),
    :skills       => [1,2,3],
  }
end