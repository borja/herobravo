def h60
  {
    :id        => 60,
    :name      => "Anníbal Killarney",
    :personaje => "hoplita",
    :jugador   => "Iris",
    :status    => "reserva",
    :nivel     => 2,
    :cuerpo    => 8,
    :mente     => 2,
    :mov       => 8,
    :profesion => Profesion.new({:id => 3, :aprendiz => [0,1]}),
    :armadura  => Armadura.new({:id => 2}),
    :armas     => [
      Arma.new({:id => 1}),
      Arma.new({:id => 7})],
    :skills    => [0,2],
  }
end
