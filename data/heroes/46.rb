# encoding: UTF-8
def h46
  { 
    :id           => 46,
    :name         => "Gracia Favule",
    :personaje    => "derviche",
    :jugador      => "Daniel Cabañas",
    :status       => "reserva",
    :nivel        => 1,
    :cuerpo       => 6,
    :mente        => 4,
    :mov          => 8,
    :armas        => [Arma.new({:id => 1})],
    :armadura     => Armadura.new({:id => 2}),
    :pet          => Pet.new({:id => 15, :name => "Fabulosa", :torpe => true}),
    :hechizos     => [18,19,20],
  }
end