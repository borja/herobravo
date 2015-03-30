# encoding: UTF-8
def h45
  { 
    :id           => 45,
    :name         => "Moorp",
    :personaje    => "conjurador",
    :jugador      => "Arturo Salcedo",
    :status       => "activo",
    :nivel        => 1,
    :cuerpo       => 4,
    :mente        => 6,
    :mov          => 7,
    :pet          => Pet.new({:id => 5, :name => "Vladimir", :torpe => true}),
    :armas        => [Arma.new({:id => 3}) ],
    :armadura     => Armadura.new({:id => 1, :gemas => [4] }),
    :proteccions  => [Proteccion.new({:id => 4, :ranuras => 1}) ],
    :miscelaneas  => [Miscelanea.new({:id => 2, :ranuras => 1, :enchants => [77] }) ],
    :hechizos     => [0,1,2,12,13,14,18,19,20],
  }
end