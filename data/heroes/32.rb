# encoding: UTF-8
def h32
  { 
    :id           => 32,
    :name         => "Trag al",
    :personaje    => "señor de las bestias",
    :jugador      => "Alberto",
    :status       => "retirado",
    :nivel        => 10,
    :cuerpo       => 15,
    :mente        => 7,
    :mov          => 9,
    :armas        => [Arma.new({:id =>  0})],
    :armadura     => Armadura.new({:id => 0}),
    :skills       => [0,1,2,3,4,5,6,7,8,9,10],
  }
end