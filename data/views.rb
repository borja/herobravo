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
      :template => { :main => 'personaje/familiares'}
    },
    {
      :route    => "habilidades",
      :title    => "Habilidades",
      :template => { :main => 'personaje/habilidades'}
    },
    {
      :route    => "caminos",
      :title    => "Caminos",
      :template => { :main => 'personaje/caminos'}
    },
    {
      :route    => "profesiones",
      :title    => "Profesiones",
      :template => { :main => 'personaje/profesiones'}
    },
    {
      :route    => "razas",
      :title    => @raza ? @raza.capitalize : "Razas",
      :template => {
        :left   => 'personaje/razas/left/links',
        :main   => "personaje/razas/center/#{@raza || "main"}",
        :right  => "personaje/razas/right/#{ @raza || "stats"}",
      }
    },
  ]
end

def view route ; views.find{ |v| v[:route] == route } end