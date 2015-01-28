# encoding: UTF-8
def h7
  { 
    :id           => 7,
    :name         => "Thor",
    :personaje    => "ingeniero",
    :jugador      => "Aitor",
    :status       => "activo",
    :nivel        => 7,
    :repu         => 3,
    :cuerpo       => 10,
    :mente        => 4,
    :mov          => 8,
    :pet          => Pet.new({:id  => 18, :name => "Menta", :torpe => true}),
    :armas        => [Arma.new({:id => 12, :enchants => [58]})],
    :armadura     => Armadura.new({:id => 3}),
    :proteccions  => [Proteccion.new({:id => 2}),
                      Proteccion.new({:id => 5, :ranuras => 1, :enchants => [7]}),
                      Proteccion.new({:id => 8, :ranuras => 1})],
    :miscelaneas  => [Miscelanea.new({:id => 1, :ranuras => 2, :enchants => [25]})],
    :tesoro       => {:gemas => [3,3,11,8,25],
                      :runas => [3,6,8]},  
    :pergaminos   => [Pergamino.new({:id => 2, :spells  => [8,10]}),
                      Pergamino.new({:id => 1, :spells  => [32]})],
    :skills       => [0,1,2,3,4,5,6,7,8,9],
    :profesion    => Profesion.new({:id => 2,  :aprendiz => [0,1]}),
    :historia     => "Inscrito en el concurso",
  }
end