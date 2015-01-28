# encoding: UTF-8
def menu
  { "índice" => [],
    "héroes" => [
      "lista de héroes"   => ["activos", "reservistas", "licenciados", "ermitaños"],
      "personajes"        => ["mago", "bárbaro", "enano", "elfo"],
    ],
    "equipo" => [
      "combate"           => ["armas", "armaduras", "protecciones", "misceláneas"],
      "útiles"            => ["pociones", "pergaminos", "supervivencia", "piezas"],
    ],
    "tesoro" => [
      "engarces"          => ["gemas", "joyas", "runas", "tiers"],
      "objetos mágicos"   => ["artefactos", "encantamientos", "objetos únicos", "objetos legendarios"],
    ],
    "magia" => [
      "hechizos"          => ["nivel 1", "nivel 2", "nivel 3"],
      "escuelas de magia" => ["elemental", "sagrada", "tenebrosa"],
    ],  
    "manuales" => [
      "turno"             => ["acciones", "combate", "tesoro"],
      "ciudad"            => ["profesiones", "familiares", "escuelas"],
    ],
    "habilidades" => [
      "héroes básicos"    => ["enano", "elfo", "mago", "bárbaro"],
      "descendientes"     => ["clérigo", "ladrón", "tiefling"],
    ],     
  }
end
