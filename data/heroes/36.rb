# encoding: UTF-8
def h36
  { 
    :id           => 36,
    :name         => "Ïlóndelle",
    :gender       => "female",
    :personaje    => "derviche",
    :jugador      => "Iris",
    :status       => "extranjero",
    :nivel        => 5,
    :cuerpo       => 6,
    :mente        => 4,
    :mov          => 12,
    :hechizos     => [7,8,9],
    :armas        => [Arma.new({:id => 5, :gemas =>[17]}),
                     Arma.new({:id => 1, :gemas =>[18]})],
    :armadura     => Armadura.new({:id => 2}),
    :miscelaneas  => [Miscelanea.new({:id => 6, :ranuras  => 2}),
                     Miscelanea.new({:id => 2, :enchants => 9})],
    :skills       => [0,1,2,3,4],
  }
end