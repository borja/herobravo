# encoding: UTF-8
def h40
  { 
    :id           => 40,
    :name         => "Loras",
    :personaje    => "derviche",
    :jugador      => "Daniel Cabañas",
    :status       => "extranjero",
    :nivel        => 2,
    :cuerpo       => 6,
    :mente        => 4,
    :mov          => 9,
    :hechizos     => [18,19,20],
    :skills       => [0,2],
    :armas        => [Arma.new({:id => 5, :runas    => [5]})],
    :armadura     => Armadura.new({:id => 6, :enchants => [18,19,27], :ranuras => 1}),
    :pergaminos   => [Pergamino.new({:id => 1, :spells  => [20]})],
  }
end