# encoding: UTF-8
def h37
  { 
    :id           => 37,
    :name         => "Vintor Steelengard",
    :personaje    => "matador",
    :jugador      => "Daniel Acha",
    :status       => "extranjero",
    :nivel        => 2,
    :cuerpo       => 8,
    :mente        => 3,
    :mov          => 8,
    :pet          => Pet.new({:id  => 16, :name => "bigotitos", :torpe => true}),
    :armas        => [Arma.new({:id => 11}),
                      Arma.new({:id => 7})],
    :armadura     => Armadura.new({:id => 2}),
    :pergaminos   => [Pergamino.new({:id => 3}),
                      Pergamino.new({:id => 1, :spells => [8] }),
                      Pergamino.new({:id => 1, :spells => [8] })],
  }
end