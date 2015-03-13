# encoding: UTF-8
def h30
  { 
    :id           => 30,
    :name         => "Elysa",
    :personaje    => "conjurador",
    :jugador      => "Iris",
    :gender       => "female",
    :nivel        => 2,
    :repu         => 2,
    :cuerpo       => 5,
    :mente        => 6,
    :mov          => 7,
    :hechizos     => [1,2,3,4,5,6,7,8,9,10,11,12],
    :armas        => [Arma.new({:id =>  0})],
    :armadura     => Armadura.new({:id => 0}),
    :status       => "retirado",
    :muerto       => true
  }
end