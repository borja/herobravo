# encoding: UTF-8

def views
  [
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
      :route    => "mapa",
      :title    => "Mapa",
      :template => {
        :left   => 'mapa/ciudades',
        :main   => 'mapa/mapa',
      }
    },
    {
      :route    => "familiares",
      :title    => "Familiares",
      :template => {
        :main   => 'personaje/familiares',
      }
    },
    {
      :route    => "habilidades",
      :title    => "Habilidades",
      :template => {
        :main   => 'personaje/habilidades',
      }
    },
  ]
end

def view route ; views.find{ |v| v[:route] == route } end