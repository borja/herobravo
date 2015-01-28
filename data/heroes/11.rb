# encoding: UTF-8
def h11
  { 
    :id           => 11,
    :name         => "Selene",
    :personaje    => "derviche",
    :jugador      => "Nora",
    :gender       => "female",
    :nivel        => 8,
    :repu         => 2,
    :cuerpo       => 10,
    :mente        => 4,
    :mov          => 14,
    :hechizos     => [6,7,8],
    :armas        => [Arma.new({:id => 2, :gemas   => [11,11,11,53]}), 
                      Arma.new({:id => 5})],
    :armadura     => Armadura.new({:id => 2}),
    :proteccions  => [Proteccion.new({:id => 2, :gemas    => [28]}), 
                      Proteccion.new({:id => 3, :ranuras  => 2, :enchants=> [8]})],
    :miscelaneas  => [Miscelanea.new({:id => 1, :enchants => [29]}), 
                      Miscelanea.new({:id => 2, :gemas    => [42], :enchants => [70,71]}), 
                      Miscelanea.new({:id => 3, :enchants => [28]})],
    :skills       => [0,1,2,3,4,5,6,7],
    :profesion    => Profesion.new({:id => 3,  :aprendiz => [0]}),
    :pociones     => [7],
    :tesoro       => {:gemas => [2,2] },
  }
end