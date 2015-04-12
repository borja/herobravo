# encoding: UTF-8
def h54
  { 
    :id           => 54,
    :name         => "Ana Cardo",
    :personaje    => "conjurador",
    :jugador      => "Irene",
    :status       => "extranjero",
    :ciudad       => "Zindor",
    :gender       => "female",
    :nivel        => 1,
    :cuerpo       => 4,
    :mente        => 6,
    :mov          => 7,
    :skills       => [0,1],
    :armadura     => Armadura.new({:id => 1}),
    :armas        => [Arma.new({:id => 8}) ],
    :hechizos     => [0,1,2,6,7,8,12,13,14,18,19,20],
  }
end