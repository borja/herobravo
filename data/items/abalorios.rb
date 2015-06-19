# encoding: UTF-8
def abalorios
  [
    { 
      :id           => 0,
      :name         => "moneda",
      :efecto       => "suerte!",
    },
    { 
      :id           => 1,
      :name         => "libro de conjuros",
      :efecto       => "leer!",
    },
    { 
      :id           => 2,
      :name         => "bufanda calentita",
      :efecto       => "+1 vs Escarcha",
    },
  ]
end
def abalorio id ; abalorios[id] end