# encoding: UTF-8
def h50
  { 
    :id           => 50,
    :name         => "Filomeno Apio",
    :personaje    => "matador",
    :jugador      => "Irene",
    :status       => "activo",
    :historia     => 2,
    :nivel        => 2,
    :cuerpo       => 8,
    :mente        => 3,
    :mov          => 6,
    :oro          => 58,
    :skills       => [1,2],
    :montura      => Montura.new({:id => 3 }),                
    :armas        => [
      Arma.new({:id => 11}),
      Arma.new({:id => 7})
    ],
    :armadura     => Armadura.new({:id => 3,  :enchants => [85,86] }),
    :proteccions  => [
      Proteccion.new({:id => 1, :enchants => [84] }),
      Proteccion.new({:id => 2, :enchants => [37] })
    ],
    :tesoro       => {
      :runas => [3]
    }
  }
end