# encoding: UTF-8
def h3
  { 
    :id           => 3,
    :name         => "Elysa Demoneye",
    :personaje    => "vengador",
    :jugador      => "Iris",
    :gender       => "female",
    :status       => "reserva",
    :nivel        => 6,
    :repu         => 1,
    :cuerpo       => 9,
    :mente        => 6,
    :mov          => 7,
    :hechizos     => [0,1,2],
    :shadows      => [0,1,2],
    :armas        => [Arma.new({:id => 24, :enchants => [72,73,74]})],
    :armadura     => Armadura.new({:id => 3}),
    :proteccions  => [Proteccion.new({:id => 1, :ranuras => 2, :enchants => [20]}),
                     Proteccion.new({:id => 5,                :enchants => [22]})],
    :miscelaneas  => [Miscelanea.new({:id => 2, :ranuras => 2, :enchants => [21]}),
                     Miscelanea.new({:id => 17,               :enchants => [64]})],
    :skills       => [0,1,2,4,5,6,7,8,9],
    :profesion    => Profesion.new({:id => 3,  :aprendiz => [0]}),
    :tesoro       => {:runas => [3],
                     :gemas => [18,27,25,21,52,10]},
    :pet          => Pet.new({:id  => 20, :name => "Jazzy"}),
  }
end