# encoding: UTF-8
def h43
  { 
    :id           => 43,
    :name         => "Ylaidyl",
    :personaje    => "hechicero",
    :jugador      => "Eva",
    :gender       => "female",
    :nivel        => 1,
    :cuerpo       => 4,
    :mente        => 6,
    :mov          => 7,
    :armas        => [Arma.new({:id => 8})],
    :armadura     => Armadura.new({:id => 1}),
    :miscelaneas  => [Miscelanea.new({:id => 2 })],
    :hechizos     => [1,2,3,4,5,6,7,8,9,10,11,12]
  }
end