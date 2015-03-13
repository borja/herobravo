# encoding: UTF-8
def miscelaneas
  [
    {
      :id   => 0,
      :name => "hebilla",
      :max  => 1,
      :fits => "hebilla"
    },
    {
      :id   => 1,
      :name => "anillo",
      :max  => 2,
      :fits => "anillo",
    },
    {
      :id   => 2,
      :name => "collar",  
      :max  => 1,
      :fits => "cuello", 
    }, 
    {
      :id   => 3,
      :name => "pendiente",
      :max  => 2,
      :fits => "pendientes",
    },   
    {
      :id   => 4,
      :name => "argolla",
      :max  => 1,
      :fits => "argolla",
    },
    {
      :id   => 5,
      :name => "cadena",
      :max  => 2,
      :fits => "cadena",
    },
    {
      :id   => 6,
      :name => "talismán",
      :max  => 3,
      :fits => "amuleto",
    },
    {
      :id   => 7,
      :name => "camafeo",
      :max  => 1,
      :fits => "amuleto",
    },
    {
      :id   => 8,
      :name => "dado magiorco",
      :max  => 1,
      :fits => "amuleto",
      :artefacto => true,
    },
    {
      :id   => 9,
      :name => "gargantilla",  
      :max  => 1,
      :fits => "cuello", 
    },
    {
      :id   => 10,
      :name => "gorjal",  
      :max  => 1,
      :fits => "cuello", 
    },
    {
      :id   => 11,
      :name => "anillo de los deseos",
      :max  => 1,
      :fits => "anillo",
      :legendario => true,
    },
    {
      :id   => 12,
      :name => "saco garrapato",
      :max  => 1,
      :fits => "amuleto",
      :artefacto => true,
    },
    {
      :id   => 13,
      :name => "talismán de melar",
      :max  => 1,
      :fits => "amuleto",
      :legendario => true,
    },
    {
      :id   => 14,
      :name => "tobilleras",
      :max  => 1,
      :fits => "tobillos",
    },
    {
      :id   => 15,
      :name => "tatuajes",
      :max  => 0,
      :fits => "tatuajes",
    },
    {
      :id   => 16,
      :name => "silbato",
      :max  => 2,
      :fits => "amuleto",
    },
    {
      :id   => 17,
      :name => "pluma",  
      :max  => 0,
      :fits => "amuleto", 
    },
    {
      :id   => 18,
      :name => "lámpara",  
      :max  => 4,
      :fits => "amuleto", 
    },
    {
      :id   => 19,
      :name => "carcaj",  
      :max  => 1,
      :fits => "amuleto", 
    },
  ]
end

def miscelanea id ; miscelaneas[id] end