# encoding: UTF-8
def h49
  { 
    :id           => 49,
    :name         => "Damadius Umbradrack",
    :progenitores => [39, "Azakel"],
    :personaje    => "brujo",
    :jugador      => "Javier Galindo",
    :status       => "retirado",
    :nivel        => 2,
    :cuerpo       => 6,
    :mente        => 5,
    :mov          => 7,
    :hechizos     => [0,1,2],
    :shadows      => [0,1,2],
    :armas        => [Arma.new({:id =>  3})],
    :armadura     => Armadura.new({:id => 1}),
    :skills       => [0,1],
    :pet          => Pet.new({:id  => 20, :name => "terry"}),
    :muerto       => true,
  }
end