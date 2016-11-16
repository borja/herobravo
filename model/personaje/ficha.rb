# encoding: UTF-8

# Campos de la ficha
def fields
  [
    %w(cabeza hombros muñecas cintura entrepierna),
    %w(espalda pechera manos hebilla pies tatuajes),
    %w(cuello argolla pendientes cadena broche tobillos)
  ]
end

# Transformaciones de las magias
# TODO: Mejorar los scopes para que esto no pase
def leyes
  [{ nombre: 'hechizos', method: 'spell'  },
   { nombre: 'shadows',  method: 'sombra' },
   { nombre: 'blood',    method: 'sangre' },
   { nombre: 'ice',      method: 'hielo'  },
   { nombre: 'sand',     method: 'arena'  }]
end
