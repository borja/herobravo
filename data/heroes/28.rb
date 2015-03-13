# encoding: UTF-8
def h28
  { 
    :id           => 28,
    :name         => "Namhayd",
    :personaje    => "conjurador",
    :jugador      => "Alpa",
    :nivel        => 5,
    :cuerpo       => 5,
    :mente        => 10,
    :mov          => 7,
    :hechizos     => [1,2,3,4,5,6,7,8,9,10,11,12],
    :armas        => [Arma.new({:id => 4}),
                     Arma.new({:id => 3})],
    :armadura     => Armadura.new({:id  => 1}),
    :proteccions  => [Proteccion.new({:id => 8})],
    :miscelaneas  => [Miscelanea.new({:id => 1})],
  }
end