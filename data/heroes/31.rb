# encoding: UTF-8
def h31
  { 
    :id           => 31,
    :name         => "Eleazar",
    :personaje    => "caminante",
    :jugador      => "Celia",
    :nivel        => 2,
    :cuerpo       => 6,
    :mente        => 4,
    :mov          => 8,
    :hechizos     => [0,1,2],
    :shadows      => [0,1,2],
    :armas        => [Arma.new({:id => 2})],
    :armadura     => Armadura.new({:id => 1}),
    :skills       => [0,1],
    :gender       => "female",
    :status       => "reserva",
  }
end