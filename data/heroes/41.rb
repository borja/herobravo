# encoding: UTF-8
def h41
  { 
    :id           => 41,
    :name         => "Söcerdote",
    :personaje    => "clérigo",
    :jugador      => "Alberto",
    :status       => "retirado",
    :repu         => 4,
    :nivel        => 7,
    :cuerpo       => 9,
    :mente        => 6,
    :mov          => 9,
    :armas        => [Arma.new({:id => 22, :enchants => [46]})],
    :armadura     => Armadura.new({:id => 2}),
    :proteccions  => [Proteccion.new({:id => 5, :enchants => [5]}),
                      Proteccion.new({:id => 3, :enchants => [8]}),
                      Proteccion.new({:id => 6, :enchants => [20,47], :ranuras => 1}),
                      Proteccion.new({:id => 8, :enchants => [48]})],
    :miscelaneas  => [Miscelanea.new({:id => 12, :enchants => [43,44,45] }) ],
    :skills       => [0,1,2,3,4,5,6,7,8,9,10,11],
  }
end