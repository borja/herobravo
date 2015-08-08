# encoding: UTF-8
def h28
  { 
    :id           => 28,
    :name         => "Namhayd",
    :personaje    => "conjurador",
    :jugador      => "Alpa",
    :nivel        => 6,
    :cuerpo       => 5,
    :mente        => 11,
    :mov          => 7,
    :hechizos     => [0,1,2,6,7,8,12,13,14,31,32,34],
    :shadows      => [0,1,2],
    :skills       => [1,5,3,4,5,6,7],
    :armas        => [ 
      Arma.new({:id => 3}),
      Arma.new({:id => 4, :enchants => [88] }) ],
    :armadura     =>   Armadura.new({:id  => 1, :ranuras => 3, :enchants => [0,1] }),
    :proteccions  => [ Proteccion.new({:id => 8, :joyas => [20,9] })],
    :miscelaneas  => [ Miscelanea.new({:id => 1})],
    :profesion    =>   Profesion.new({:id => 0,  :aprendiz => [0]}),
    :tesoro       => {:gemas => [5]},
  }
end
