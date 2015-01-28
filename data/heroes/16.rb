# encoding: UTF-8
def h16
  { 
    :id           => 16,
    :name         => "Savra",
    :personaje    => "hechicero",
    :jugador      => "Chorni",
    :gender       => "female",
    :nivel        => 5,
    :cuerpo       => 4,
    :mente        => 13,
    :mov          => 7,
    :hechizos     => [1,2,3,4,5,6,7,8,9,10,11,12,29,33],
    :skills       => [0,1,2,5],
    :armas        => [Arma.new({:id => 3,  :enchants => [54]}), 
                     Arma.new({:id => 4,  :enchants => [13,14,15] })],
    :armadura     => Armadura.new({:id => 1,   :gemas    => [4,4,4]}),
    :proteccions  => [Proteccion.new({:id => 1,  :enchants => [55]}), 
                     Proteccion.new({:id => 3,  :gemas    => [26], :ranuras => 1}), 
                     Proteccion.new({:id => 8,  :gemas    => [29]})],
    :miscelaneas  => [Miscelanea.new({:id => 1,  :gemas    => [19],     :enchants => [56] }), 
                     Miscelanea.new({:id => 2,  :gemas    => [28]}),
                     Miscelanea.new({:id => 6,  :enchants => [57]})],
    }
end