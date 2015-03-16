# encoding: UTF-8
def h34
  { 
    :id           => 34,
    :name         => "Shin-o",
    :personaje    => "druida",
    :jugador      => "Daniel Cabañas",
    :status       => "retirado",
    :nivel        => 10,
    :repu         => 3,
    :cuerpo       => 10,
    :mente        => 9,
    :mov          => 9,
    :armas        => [Arma.new({:id => 18,  :ranuras  => 2, :enchants =>[19]})],
    :armadura     => Armadura.new({:id => 4,   :gemas    => [24,24]}),
    :skills       => [0,1,2,5,6,8,9,12,14,15,16],
  }
end