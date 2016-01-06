# encoding: UTF-8
def h77
  { 
    :id        => 77,
    :name      => "Eznowbol",
    :personaje => "vengador",
    :jugador   => "Daniel Cabañas",
    :status    => "reserva",
    :nivel     => 1,
    :hechizos  => [0,1,2],
    :shadows   => [0,1,2],
    :cuerpo    => 6,
    :mente     => 4,
    :mov       => 7,
    :armadura  => Armadura.new({:id => 2}),
    :armas     => [
      Arma.new({:id => 7}),
      Arma.new({:id => 26}),      
    ]
  }
end
