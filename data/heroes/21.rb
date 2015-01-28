# encoding: UTF-8
def h21
  { 
    :id           => 21,
    :name         => "Chandalf, el Morado",
    :personaje    => "conjurador",
    :jugador      => "Alex",
    :nivel        => 4,
    :cuerpo       => 4,
    :mente        => 9,
    :mov          => 7,
    :hechizos     => [1,2,3,4,5,6,7,8,9,10,11,12],
    :armas        => [Arma.new({:id => 3})],
    :armadura     => Armadura.new({:id => 1}),
    :proteccions  => [Proteccion.new({:id => 1}), 
                      Proteccion.new({:id => 8})],
    :miscelaneas  => [Miscelanea.new({:id => 2}), 
                      Miscelanea.new({:id => 5})],
    :tesoro       => {:runas => [4] },
  }
end