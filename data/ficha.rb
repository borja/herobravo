# encoding: UTF-8
def engarces
  %w(gemas joyas runas)
end

def fields
  { 1 => %w(cabeza hombros muñecas cintura entrepierna),
    2 => %w(espalda pechera manos hebilla pies tatuajes),
    3 => %w(cuello argolla pendientes cadena broche tobillos)
  }
end

def resistencias
  [
    { nombre:       'psiónica',
      description:  'Es la resistencia arcana principal,
        contra las maldiciones y los trucos mentales.'
    },
    { nombre:       'calor',
      description:  'Resistencia contra el fuego,
        los poderes infernales y las llamas.'
    },
    { nombre:       'escarcha',
      description:  'Resistencia contra el frío, la congelación y el hielo.'
    },
    { nombre:       'miedo',
      description:  'Evita perder el control del personaje.'
    },
    { nombre:       'peste',
      description:  'Resistencia contra venenos,
        enfermedades, ácidos y toxinas.'
    },
    { nombre:       'rayo',
      description:  'Resistencia contra los relámpagos,
        tormentas y muchos sortilegios de aire.'
    },
    { nombre:       'tenebro',
      description:  'La resistencia contra la nigromancia,
        la magia de sangre, el caos, la magia oscura y lo impío.'
    }
  ]
end
