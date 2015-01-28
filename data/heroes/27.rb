# encoding: UTF-8
def h27
  { 
    :id           => 27,
    :name         => "Drako",
    :personaje    => "hechicero",
    :jugador      => "Javier",
    :nivel        => 1,
    :cuerpo       => 4,
    :mente        => 6,
    :mov          => 7,
    :hechizos     => [1,2,3,4,5,6,7,8,9,10,11,12],
    :armas        => [Arma.new({:id => 4}),
                      Arma.new({:id => 3})],
    :armadura     => Armadura.new({:id => 1}),
    :miscelaneas  => [Miscelanea.new({:id => 1})],
  }
end