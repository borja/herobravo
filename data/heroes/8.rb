# encoding: UTF-8
def h8
  { 
    :id           => 8,
    :name         => "Godric",
    :personaje    => "falangista",
    :jugador      => "Daniel de Haro",
    :status       => "activo",
    :nivel        => 8,
    :cuerpo       => 11,
    :mente        => 4,
    :mov          => 8,
    :armas        => [Arma.new({:id => 7, :runas => [9]}), 
                      Arma.new({:id => 7})],
    :armadura     => Armadura.new({:id => 7}),
    :proteccions  => [Proteccion.new({:id => 13}),
                      Proteccion.new({:id => 3, :enchants => [0]})],
    :miscelaneas  => [Miscelanea.new({:id => 1, :enchants => [10]}),
                      Miscelanea.new({:id => 10,:enchants => [0]})],
    :pergaminos   => [Pergamino.new({:id => 2, :spells   => [14]})],
    :piezas       => [3],
    :pet          => Pet.new({:id  => 18, :name => "pendeja", :torpe => true}),
    :profesion    => Profesion.new({:id => 3,  :aprendiz => [0,1,3]}),
    :skills       => [0,1,2,3,4,5,6,7,8,9,10,11,12],
    :tesoro       => {:gemas => [3,12,29,2,13,2,30] },
  }
end