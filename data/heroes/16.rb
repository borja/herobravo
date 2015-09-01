# encoding: UTF-8
def h16
  { 
    :id           => 16,
    :name         => "Savra",
    :personaje    => "hechicero",
    :jugador      => "Chorni",
    :gender       => "female",
    :historia     => 2,
    :nivel        => 5,
    :cuerpo       => 4,
    :mente        => 13,
    :mov          => 7,
    :hechizos     => [1,2,3,4,5,6,7,8,9,10,11,12,29,33],
    :skills       => [0,1,2,5],
    :armas        => [
      Arma.new({:id => 3,  :enchants => [54]}), 
      Arma.new({:id => 4,  :enchants => [13,14,15] })
    ],
    :armadura     => Armadura.new({:id => 1, :gemas => [4,4,4]}),
    :proteccions  => [
      Proteccion.new({:id => 1, :enchants => [55]}), 
      Proteccion.new({:id => 3, :ranuras => 2}), 
      Proteccion.new({:id => 8, :gemas => [26] })
    ],
    :miscelaneas  => [
      Miscelanea.new({:id => 1, :gemas => [28], :enchants => [56] }),
      Miscelanea.new({:id => 1, :gemas => [25] }), 
      Miscelanea.new({:id => 2, :ranuras => 1 }),
      Miscelanea.new({:id => 6, :enchants => [57]})
    ],
  }
end