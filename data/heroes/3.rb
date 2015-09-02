# encoding: UTF-8
def h3
  { 
    :id           => 3,
    :name         => "Elysa Demoneye",
    :personaje    => "vengador",
    :jugador      => "Iris",
    :titulo       => "Condesa de Zelmuria",
    :gender       => "female",
    :status       => "reserva",
    :historia     => 1,
    :nivel        => 7,
    :repu         => 2,
    :cuerpo       => 9,
    :mente        => 7,
    :mov          => 7,
    :skills       => [0,1,2,4,5,6,7,8,9],
    :hechizos     => [0,1,2],
    :shadows      => [0,1,2,5],
    :materiales   => [0],
    :armas        => [Arma.new({:id => 24, :enchants => [72,73,74]})],
    :armadura     => Armadura.new({:id => 3}),
    :proteccions  => [Proteccion.new({:id => 1, :ranuras => 2, :enchants => [20]}),
                     Proteccion.new({:id => 5,                :enchants => [22]})],
    :miscelaneas  => [
      Miscelanea.new({:id => 2,  :enchants => [21], :ranuras => 2 }),
      Miscelanea.new({:id => 4,  :enchants => [71] }),
      Miscelanea.new({:id => 17, :enchants => [64] })
    ],
    :pet          => Pet.new({:id => 20, :name => "Jazzy"}),
    :profesion    => Profesion.new({:id => 3, :aprendiz => [0]}),
    :tesoro       => {
      :runas => [3],
      :gemas => [18,19,27,29,21,52,10]
    },
  }
end