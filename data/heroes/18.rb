# encoding: UTF-8
def h18
  { 
    :id           => 18,
    :name         => "Paul Baloff",
    :personaje    => "bersérker",
    :jugador      => "Adrián",
    :status       => "activo",
    :nivel        => 2,
    :cuerpo       => 8,
    :mente        => 3,
    :mov          => 7,
    :armas        => [Arma.new({:id => 12})],
    :armadura     => Armadura.new({:id => 3}),
    :proteccions  => [Proteccion.new({:id => 2}), 
                      Proteccion.new({:id => 1}),
                      Proteccion.new({:id => 14}), 
                      Proteccion.new({:id => 8, :ranuras => 4})],
    :miscelaneas  => [Miscelanea.new({:id => 10 })],                        
    :skills       => [0,1,2],
    }
end