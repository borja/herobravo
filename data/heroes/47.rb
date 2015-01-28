# encoding: UTF-8
def h47
  { 
    :id           => 47,
    :name         => "Elros Amarie",
    :personaje    => "druida",
    :jugador      => "Iris",
    :status       => "licenciado",
    :progenitores => [29,"Conde Ragnar"],
    :nivel        => 17,
    :repu         => 9,
    :cuerpo       => 14,
    :mente        => 12,
    :mov          => 11,
    :pet          => Pet.new({:id => 11, :name => "Basidio"}),
    :hechizos     => [1,2,3,6,7,8,12,16,17,18,19,20],
    :armas        => [Arma.new({:id => 0})],
    :armadura     => Armadura.new({:id => 0}),
    :skills       => [0,1,2,3,4,5,6,7,8,10,11,12,13,14,15,16,17,18,19,20,22,25,26,27,28,29,30,32,33,34,35],
    :profesion    => Profesion.new({:id => 5, :aprendiz => [0,3,4]}),
  }
end