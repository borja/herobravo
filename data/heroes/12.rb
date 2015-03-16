# encoding: UTF-8
def h12
  { 
    :id           => 12,
    :name         => "Torox",
    :personaje    => "hoplita",
    :jugador      => "Ivan",
    :nivel        => 8,
    :repu         => 1,
    :cuerpo       => 13,
    :mente        => 4,
    :mov          => 6,
    :armas        => [Arma.new({:id => 15}), 
                      Arma.new({:id => 7})],
    :armadura     => Armadura.new({:id => 5, :joyas    => [2], :runas    => [1]}),
    :proteccions  => [Proteccion.new({:id => 2, :gemas    => [26,27]}), 
                      Proteccion.new({:id => 3, :runas    => [0,1]})],
    :miscelaneas  => [Miscelanea.new({:id => 1, :gemas    => [25]}), 
                      Miscelanea.new({:id => 2, :gemas    => [20], :enchants => [70,71]})],
    :skills       => [0,1,2,3,4,5,6,7,8,9,10,11],
    :profesion    => Profesion.new({:id => 3,  :aprendiz => [0]}),
    :tesoro       => {:runas => [4,4,4],
                      :gemas => [25,51,36] }
    }
end