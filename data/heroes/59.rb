# encoding: UTF-8
def h59
  { 
    :id           => 59,
    :name         => "Caladrius",
    :personaje    => "druida",
    :jugador      => "Javier Galindo",
    :status       => "activo",
    :pareja       => {:nombre => "Gabrielle", :raza => "elfo-female", :tipo => "pnj" },
    :nivel        => 2,
    :cuerpo       => 6,
    :mente        => 5,
    :mov          => 8,
    :repu         => 2,
    :hechizos     => [12,13,14,18,19,20],
    :armas        => [Arma.new({:id =>  1}),
                      Arma.new({:id =>  4, , :enchants => [96]})],
    :armadura     => Armadura.new({:id => 3}),
    :skills       => [0,2],
    :pet          => Pet.new({:id  => 15, :name => "Viviana"}),
  }
end
