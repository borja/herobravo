# encoding: UTF-8
def h50
  { 
    :id           => 50,
    :name         => "Filomeno Apio",
    :personaje    => "matador",
    :jugador      => "Irene",
    :status       => "activo",
    :historia     => 2,
    :nivel        => 4,
    :cuerpo       => 9,
    :mente        => 3,
    :mov          => 7,
    :oro          => 58,
    :skills       => [2,4],
    :mounts       => [3],    
    :pet          => Pet.new({:id  => 2, :name => "Aserrín Aserrán"}), 
    :profesion    => Profesion.new({:id => 6, :aprendiz => [0]}),
    :piezas       => [3],           
    :armas        => [
      Arma.new({:id => 11}),
      Arma.new({:id => 7})
    ],
    :armadura     => Armadura.new({:id => 3,  :enchants => [85,86] }),
    :proteccions  => [
      Proteccion.new({:id => 1, :enchants => [84] }),
      Proteccion.new({:id => 2, :enchants => [37] })
    ],
    :miscelaneas  => [
      Miscelanea.new({:id => 6, :ranuras => 1, :enchants => [97,52]}),
    ],
    :tesoro       => {
      :runas => [3]
    },
  }
end