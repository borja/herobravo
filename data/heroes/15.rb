# encoding: UTF-8
def h15
  { 
    :id           => 15,
    :name         => "Tim el mago",
    :personaje    => "hechicero",
    :jugador      => "Luis",
    :pareja       => {:char => 14, :tipo => "pj"},
    :repu         => 1,
    :historia     => 1,
    :nivel        => 7,
    :cuerpo       => 6,
    :mente        => 10,
    :mov          => 7,
    :hechizos     => [0,1,2,6,7,8,14,18,19,20,33,34,42],
    :armas        => [Arma.new({:id => 3}),
                      Arma.new({:id => 4, :enchants => [76]})],
    :armadura     => Armadura.new({:id => 1, :gemas => [1], :enchants => [1]}),
    :proteccions  => [Proteccion.new({:id => 11})], 
    :miscelaneas  => [Miscelanea.new({:id => 2, :enchants => [31]}),
                      Miscelanea.new({:id => 1, :enchants => [37]})],
    :skills       => [0,1,2,5,6,7,8,10],
    :gemas        => [55],
    :piezas       => [8],
    :pociones     => [1,3,3],
    :profesion    => Profesion.new({:id => 1,  :aprendiz => [0,3]}),  
    :pet          => Pet.new({:id  => 8, :name => "Naussyca"}),            
  }
end