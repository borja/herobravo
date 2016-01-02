# encoding: UTF-8
def abalorios
  [
    { 
      :id     => 0,
      :name   => "moneda",
      :efecto => "suerte!",
      :size   => 1,
    },
    { 
      :id     => 1,
      :name   => "libro de conjuros",
      :efecto => "leer!",
      :size   => 3,
    },
    { 
      :id     => 2,
      :name   => "bufanda calentita",
      :efecto => "+1 vs Escarcha",
      :size   => 2,
    },
    { 
      :id     => 3,
      :name   => "engranaje mágico",
      :efecto => "ataque por proximidad (1 dado, interruptor).<br/>+1 desactivar trampas.<br/>Se considera herramientas.",
      :size   => 2,
    },
    { 
      :id     => 4,
      :name   => "La Lista Negra",
      :efecto => "Contiene un listado de víctimas a ejecutar. Algunas ya están tachadas.",
      :size   => 1,
    },
    {
      :id     => 5,
      :name   => "lámpara encantada",  
      :efecto => "",
      :size   => 4,
      :precio => 850,
    },
    {
      :id     => 6,
      :name   => "cornucopia",  
      :efecto => "+10 oro/tesoro(x nivel de tesoro), +1 gema/runa en la tirada, +2 rentas",
      :size   => 4,
      :precio => 1000,
    },
  ]
end
def abalorio id ; abalorios[id] end