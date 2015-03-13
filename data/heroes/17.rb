# encoding: UTF-8
def h17
  { 
    :id           => 17,
    :name         => "Grunt Mascafilos",
    :personaje    => "falangista",
    :jugador      => "Alberto",
    :status       => "retirado",
    :muerto       => true,
    :nivel        => 4,
    :cuerpo       => 9,
    :mente        => 3,
    :mov          => 6,
    :armas        => [Arma.new({:id =>  0})],
    :armadura     => Armadura.new({:id => 0}), 
    :skills       => [1,2,3,4,5,6],
  }
end