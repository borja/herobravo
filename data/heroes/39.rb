# encoding: UTF-8
def h39
  {
    :id           => 39,
    :name         => "Leonard Umbradrack",
    :personaje    => "conjurador",
    :jugador      => "Javier Galindo",
    :status       => "retirado",
    :maldicion    => "peludo",
    :repu         => 2,
    :nivel        => 10,
    :cuerpo       => 4,
    :mente        => 13,
    :mov          => 8,
    :profesion    => Profesion.new({:id => 4, :aprendiz => [0,1]}),
    :hechizos     => [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47],
    :armas        => [Arma.new({:id => 13, :enchants =>[61,62,63]})],
    :armadura     => Armadura.new({:id => 1, :gemas => [13], :joyas => [6]}),
    :miscelaneas  => [Miscelanea.new({:id => 3, :enchants =>[44,53], :ranuras => 1, :gemas =>[18]}),
                      Miscelanea.new({:id => 2, :enchants =>[68,69]})],
    :skills       => [1,2,3,4,5,6,8,9,10],
    :pergaminos   => [Pergamino.new({:id => 1, :spells  => [51]})],
    :muerto       => true,
    :historia     => "Inscrito en el concurso",
    }
end