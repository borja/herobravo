# encoding: UTF-8
def nomuertos
  [
    { :id         => 0,
      :nombre     => 'esqueleto',
      :ataque     => 2,
      :defensa    => 2,
      :movimiento => 6,
      :mente      => 0,
      :cuerpo     => 1,
    },
    { :id         => 1,
      :nombre     => 'zombi',
      :ataque     => 2,
      :defensa    => 3,
      :movimiento => 5,
      :mente      => 0,
      :cuerpo     => 1,
    },
    { :id         => 2,
      :nombre     => 'momia',
      :ataque     => 3,
      :defensa    => 4,
      :movimiento => 4,
      :mente      => 0,
      :cuerpo     => 2,
    },
    { :id         => 3,
      :nombre     => 'espectro',
      :ataque     => 3,
      :defensa    => 3,
      :movimiento => 8,
      :mente      => 0,
      :cuerpo     => 2,
    }
    
  ]
end

def nomuerto id ; nomuertos[id] end
