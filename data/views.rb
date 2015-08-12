# encoding: UTF-8

def views
  [
    {
      :route    => "dado",
      :title    => "Combate",
      :template => {
        :main   => 'reglamento/dado',
        :right  => 'reglamento/derecha/combate'
      }
    },
    {
      :route    => "historias",
      :title    => "Leyendas",
      :template => {
        :left   => 'personaje/razas/left/links',
        :main   => 'lore/centro',
        :right  => 'lore/derecha',
      }
    },
    {
      :route    => "pnj",
      :title    => "Personaje",
      :template => {
        :main   => 'lore/pnj',
        :right  => 'lore/derecha',
      }
    },
    {
      :route    => "mapa",
      :title    => "Mapa",
      :template => {
        :left   => 'mapa/ciudades',
        :left2  => 'mapa/monturas',
        :main   => 'mapa/mapa',
      }
    },
    {
      :route    => "familiares",
      :title    => "Familiares",
      :template => { :main => 'personaje/familiares'}
    },
    {
      :route    => "habilidades",
      :title    => "Habilidades",
      :template => { :main => 'personaje/habilidades'}
    },
    {
      :route    => "tarot",
      :title    => "Tarot Maligno",
      :template => { 
        :left  => 'items/tarot/left',
        :main  => 'items/tarot/tarot',
        :right => 'reglamento/derecha/combate'}
    },
    {
      :route    => "disciplinas",
      :title    => "Habilidades",
      :template => { :main => 'personaje/disciplinas'}
    },
    {
      :route    => "caminos",
      :title    => "Caminos",
      :template => { :main => 'personaje/caminos'}
    },
    {
      :route    => "materiales",
      :title    => "Materiales",
      :template => { :main => 'items/materiales'}
    },    
    {
      :route    => "joyas",
      :title    => "Joyas",
      :template => { :main => 'items/joyas'}
    },
    {
      :route    => "monturas",
      :title    => "Monturas",
      :template => { 
        :left   => 'mapa/ciudades',
        :main  => 'ficha/monturas'
      }
    },
    {
      :route    => "runas",
      :title    => "Runas",
      :template => { :main => 'items/runas/runas'}
    },
    {
      :route    => "tiers",
      :title    => "Tiers",
      :template => { :main => 'items/tiers'}
    },
    {
      :route    => "profesiones",
      :title    => "Profesiones",
      :template => { :main => 'personaje/profesiones'}
    },
    {
      :route    => "razas",
      :title    => "Razas" ,
      :template => {
        :left   => 'personaje/razas/left/links',
        :main   => "personaje/razas/center/main",
        :right  => "personaje/razas/right/stats",
      }
    },
    {
      :route    => "manuales",
      :title    => "Reglamento",
      :template => {
        :left   => 'reglamento/izquierda/bestiario',
        :main   => 'reglamento/principal',
        :right  => 'reglamento/derecha/combate',
        :right2 => 'reglamento/derecha/personajes'
      }
    },
    {
      :route    => "objetos",
      :title    => "Objetos",
      :template => {
        :left   => 'objetos/left/content1',
        :left2  => 'objetos/left/content2',
        :main   => 'objetos/main',
        :right  => 'objetos/right/content1',
        :right2 => 'objetos/right/content2'
      }
    },
    {
      :route    => "tesoro",
      :title    => "Tesoro",
      :template => {
        :main   => 'reglamento/tesoro',
        :right  => 'reglamento/derecha/combate' }
    },
    {
      :route    => "armaduras",
      :title    => "Armaduras",
      :template => { :main => 'items/armaduras' }
    },
    {
      :route    => "armas",
      :title    => "Armas",
      :template => { :main => 'items/armas' }
    },
    {
      :route    => "protecciones",
      :title    => "Protecciones",
      :template => { :main => 'items/protecciones' }
    },
    {
      :route    => "miscelaneas",
      :title    => "Misceláneas",
      :template => { :main => 'items/miscelaneas' }
    },
    {
      :route    => "piezas",
      :title    => "Piezas",
      :template => { :main => 'items/piezas' }
    },
    {
      :route    => "maestrodearmas",
      :title    => "Maestro de Armas",
      :template => { :main => 'ciudad/maestrodearmas' }
    },
    {
      :route    => "notaria",
      :title    => "Notaría",
      :template => { :main => 'ciudad/notaria' }
    },
    {
      :route    => "palacio",
      :title    => "Palacio",
      :template => { :main => 'ciudad/palacio' }
    },
    {
      :route    => "templo",
      :title    => "Templo",
      :template => { :main => 'ciudad/templo' }
    },
    {
      :route    => "spells",
      :title    => "Hechizos",
      :template => { 
        :left  => 'ficha/izquierda/izquierda',
        :main  => 'magia/spells',         
      }
    },
    {
      :route    => "hechizos",
      :title    => "Hechizos",
      :template => { :main => 'magia/hechizos' }
    },
    {
      :route    => "sombras",
      :title    => "Sombras",
      :template => { :main => 'magia/sombras' }
    },
    {
      :route    => "plegarias",
      :title    => "Plegarias",
      :template => { :main => 'magia/plegarias' }
    },
    {
      :route    => "elficas",
      :title    => "Magias élficas",
      :template => { :main => 'magia/elficas' }
    },
    {
      :route    => "sangre",
      :title    => "Magia de sangre",
      :template => { :main => 'magia/sangre' }
    },
    {
      :route    => "biblioteca",
      :title    => "Biblioteca",
      :template => { :main => 'magia/biblioteca' }
    },
    {
      :route    => "jugadores",
      :title    => "Jugadores",
      :template => { 
        :main  => 'personaje/jugadores',
        :right => 'heroes/sidebar'
       }
    },
    {
      :route    => "heroes",
      :title    => "Héroes",
      :template => { 
        :main  => 'heroes/heroes',
        :right => 'heroes/sidebar'
       }
    },
    {
      :route    => "estados",
      :title    => "Estados de Combate",
      :template => { :main  => 'reglamento/combate/estados' }
    },    
    {
      :route    => "posiciones",
      :title    => "Posiciones de Combate",
      :template => { :main  => 'reglamento/combate/posiciones' }
    },    
    {
      :route    => "resistencias",
      :title    => "Resistencias",
      :template => { :main  => 'reglamento/combate/resistencias' }
    },
    {
      :route    => "torre",
      :title    => "Torre de Magia",
      :template => {
        :left   => 'torre/left/magias',
        :left2  => 'torre/left/especializaciones',
        :main   => 'torre/main',
        :right  => 'torre/right/tipos',
      }
    },
    {
      :route    => "magisters",
      :title    => "Magisters",
      :template => {
        :left   => 'torre/left/enseñanzas',
        :main   => 'torre/magisters',
        :right  => 'torre/right/ancestrales',
      }
    },
    {
      :route    => "criaturas",
      :title    => "Criaturas",
      :template => { :main  => 'reglamento/criaturas' }
    },
  ]
end

def view route ; views.find{ |v| v[:route] == route } end