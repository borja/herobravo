# encoding: UTF-8
def h13
  { 
    :id           => 13,
    :name         => "Cromi",
    :personaje    => "falangista",
    :jugador      => "Carlos",
    :nivel        => 7,
    :cuerpo       => 13,
    :mente        => 3,
    :mov          => 7,
    :armas        => [Arma.new({:id => 7}),
                      Arma.new({:id => 7})],
    :armadura     => Armadura.new({:id => 3}),
    :proteccions  => [Proteccion.new({:id => 2}), 
                      Proteccion.new({:id => 8})],
    :miscelaneas  => [Miscelanea.new({:id => 2}), 
                      Miscelanea.new({:id => 6})],
  }
end