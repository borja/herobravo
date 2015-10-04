# encoding: UTF-8
def h68
  { 
    :id           => 68,
    :name         => "Liam",
    :personaje    => "hechicero",
    :jugador      => "Erika",
    :status       => 'activo',
    :nivel        => 1,
    :cuerpo       => 6,
    :mente        => 4,
    :mov          => 7,
    :hechizos     => [1,6,7,8,12,13,14,18,19,20],
    :shadows      => [0,2],
    :pet          => Pet.new({:id  => 8, :name => "Hostias", :torpe => true }),
    :armadura     => Armadura.new({:id => 1}),
    :armas        => [
      Arma.new({:id => 3 }),
      Arma.new({:id => 4, :enchants => [95] })      
    ],
  }
end