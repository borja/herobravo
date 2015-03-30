# encoding: UTF-8
def h33
  { 
    :id           => 33,
    :name         => "Fuckencia",
    :progenitores => [32,"Amparo"],
    :personaje    => "asesino",
    :jugador      => "Alberto",
    :status       => "retirado",
    :gender       => "female",
    :nivel        => 10,
    :repu         => 7,
    :cuerpo       => 11,
    :mente        => 11,
    :mov          => 18,
    :armas        => [Arma.new({:id =>  0})],
    :armadura     => Armadura.new({:id => 0}),
    :hechizos     => [14],      
    :skills       => [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,19],
  }
end