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
  ]
end
def abalorio id ; abalorios[id] end