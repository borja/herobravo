# encoding: UTF-8
def h15
  { 
    :id           => 15,
    :name         => "Tim el mago",
    :personaje    => "hechicero",
    :jugador      => "Luis",
    :status       => "activo",
    :nivel        => 6,
    :cuerpo       => 6,
    :mente        => 9,
    :mov          => 7,
    :hechizos     => [0,1,2,6,7,8,18,19,20,33,34,42],
    :armas        => [Arma.new({:id => 3}),
                      Arma.new({:id => 4, :enchants => [76]})],
    :armadura     => Armadura.new({:id => 1, :gemas => [1], :enchants => [1]}),
    :proteccions  => [Proteccion.new({:id => 11})], 
    :miscelaneas  => [Miscelanea.new({:id => 2, :enchants => [31]}),
                      Miscelanea.new({:id => 1, :enchants => [37]})],
    :skills       => [0,1,2,3,4,5,7,8],
    :gemas        => [55],
    :piezas       => [8],
    :pociones     => [1,3,3],
    :profesion    => Profesion.new({:id => 1,  :aprendiz => [0,3]}),  
    :pet          => Pet.new({:id  => 8, :name => "Naussyca", :torpe => true}),
    :historia     => true               
  }
end