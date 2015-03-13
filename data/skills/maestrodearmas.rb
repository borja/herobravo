# encoding: UTF-8
def maestrodearmas
  [
    { :id           => 0,
      :name         => "empujar",
      :personajes   => ["enano","elfo","barbaro","tiefling","clerigo","mago","ladron"],
      :descripcion  => "Los enemigos suman un punto al multiplicador de proximidad del personaje cuando se desplacen a su alrededor.",
      :coste         => "300",
    },
    { :id           => 1,
      :name         => "lanzas",
      :personajes   => ["elfo","barbaro"],
      :descripcion  => "Las clases que puedan llevar lanzas, se especializarán en esta arma permitiendo llevarla a una mano, atacar en +1 casilla de distancia y atacar a los enemigos a través de sus compañeros, sin ocasionarles daño alguno.",
      :coste         => "300",
    },
    {
      :id           => 2,
      :name         => "esgrima",
      :personajes   => ["enano","elfo","barbaro","tiefling","ladron"],
      :description  => "Por describir.",
      :coste         => "300",
    },
    {
      :id           => 3,
      :name         => "ataque poderoso",
      :personajes   => ["enano","elfo","barbaro","tiefling","ladron"],
      :description  => "Por describir.",
      :coste         => "300",
    }
  ]
end

def maestrodearma(id)
  maestrodearmas[id]
end
