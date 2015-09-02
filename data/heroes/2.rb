# encoding: UTF-8
def h2
  { 
    :id           => 2,
    :name         => "Eruan Amarie",
    :progenitores => [47,33],
    :pareja       => {:nombre => "Lauranna", :raza => "dead", :tipo => "pnj" },
    :personaje    => "druida",
    :jugador      => "Iris",
    :status       => "activo",
    :repu         => 9,
    :nivel        => 19,
    :cuerpo       => 15,
    :mente        => 12,
    :mov          => 12,
    :pet          => Pet.new({:id  => 11, :name => "Basidio"}),
    :mounts       => [1],
    :materiales   => [3],
    :hechizos     => [1,2,3,6,7,8,12,16,17,18,19,20],
    :armas        => [
      Arma.new({ :id => 9,  :gemas    => [25,17,26], :enchants => [18,1,2,3,4,17]}),
      Arma.new({ :id => 23, :joyas    => [14,18,15], :enchants => [23,24]})
    ],
    :armadura     => Armadura.new({ :id => 6,  :gemas    => [34,32,34]}),
    :proteccions  => [
      Proteccion.new({:id => 1,  :runas    => [2],  :gemas    => [49], :enchants => [7]}), 
      Proteccion.new({:id => 15, :gemas    => [21], :enchants => [20,34,49,50,51,52], :ranuras => 4}),
      Proteccion.new({:id => 3,  :enchants => [8]}), 
      Proteccion.new({:id => 11, :joyas    => [12], :gemas    => [48]}), 
      Proteccion.new({:id => 5,  :enchants => [5]}),
      Proteccion.new({:id => 14}),
      Proteccion.new({:id => 10, :ranuras => 1}),
      Proteccion.new({:id => 8})],
    :miscelaneas  => [
      Miscelanea.new({:id => 1,  :gemas    => [25], :enchants => [9]}),
      Miscelanea.new({:id => 9,  :ranuras  => 3,    :enchants => [39]}),
      Miscelanea.new({:id => 7,  :enchants => [32]}),
      Miscelanea.new({:id => 11, :ranuras => 1}),
      Miscelanea.new({:id => 20, :enchants => [89,29], :ranuras => 1}),
      Miscelanea.new({:id => 18, :enchants => [66,65,67]})
    ],
    :skills       => [0,1,2,3,4,5,6,7,8,10,11,12,13,14,15,16,17,18,19,20,22,25,26,27,28,29,30,32,33,34,35,36,37,38],
    :profesion    => Profesion.new({:id => 5, :aprendiz => [0,3,4]}),
    :piezas       => [3,6,4],
    :pociones     => [0,4,6,7,7,11],
    :pergaminos   => [
      Pergamino.new({:id => 1, :spells  => [66]}),
      Pergamino.new({:id => 1, :spells  => [95]}),
      Pergamino.new({:id => 1, :spells  => [59]})],
    :tesoro => {
      :gemas => [14,51,24,25,25,17,35,16,16,27,18,39,30],
      :runas => [7,9],
      :joyas => [9]
    },
    :abalorios => [
      Abalorio.new({:id => 1}),
      Abalorio.new({:id => 2})
    ],                      
  }
end
