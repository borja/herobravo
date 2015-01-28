# encoding: UTF-8
def h29
  { 
    :id           => 29,
    :name         => "Arya Amarie",
    :personaje    => "druida",
    :gender       => "female",
    :jugador      => "Iris",
    :status       => "retirado",
    :nivel        => 10,
    :repu         => 5,
    :cuerpo       => 10,
    :mente        => 10,
    :mov          => 9,
    :armas        => [Arma.new({:id =>  0})],
    :armadura     => Armadura.new({:id => 0}),
    :skills       => [0,1,2,3,4,5,6,7,8,9,10,11,12,13,16,17,18],
    :hechizos     => [1,2,3,4,5,6,7,8,9,10,11,12,16,17,18,19,20,21,22,23],
    :historia     => "Inscrita en el concurso",
  }
end