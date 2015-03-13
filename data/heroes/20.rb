# encoding: UTF-8
def h20
  { 
    :id           => 20,
    :name         => "Xavier Umbradrack",
    :personaje    => "invocador",
    :jugador      => "Javier Galindo",
    :status       => "retirado",
    :nivel        => 3,
    :cuerpo       => 5,
    :mente        => 7,
    :mov          => 7,
    :hechizos     => [1,2,3,4,5,6,7,8,9,10,11,12],
    :armas        => [Arma.new({:id =>  0})],
    :armadura     => Armadura.new({:id => 0}),
    :skills       => [0,1,2,3],
    :pet          => Pet.new({:id  => 8, :name => "owlovicius", :torpe => true}),
    :muerto       => true,
  }
end