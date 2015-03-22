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
    }
  ]
end

def view route ; views.find{ |v| v[:route] == route } end