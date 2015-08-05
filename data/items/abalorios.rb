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
    { 
      :id           => 3,
      :name         => "engranaje mágico",
      :efecto       => "ataque por proximidad (1 dado, interruptor).<br/>+1 desactivar trampas.<br/>Se considera herramientas.",
    },
    { 
      :id           => 4,
      :name         => "La Lista Negra",
      :efecto       => "Contiene un listado de víctimas a ejecutar. Algunas ya están tachadas.",
    }
  ]
end
def abalorio id ; abalorios[id] end