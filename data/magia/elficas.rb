# encoding: UTF-8
def elficas
  [
    Elfica.new({
      :id           => 0,
      :name         => "doble imagen",
      :efecto       => "Duplica la probabilidad de esquivar.",
    }),
    Elfica.new({
      :id           => 1,
      :name         => "parar el tiempo",
      :efecto       => "Permite tener otro turno extra.",
    }),
    Elfica.new({
      :id           => 2,
      :name         => "pereza",
      :efecto       => "Reduce en 1 el movimiento, el ataque y la defensa de un monstruo, no siendo nunca >1.",
    }),
    Elfica.new({
      :id           => 3,
      :name         => "reviviscencia",
      :efecto       => "Permite revivir el mismo turno. El anterior turno no se tendra en cuenta.",
    }),
    Elfica.new({
      :id           => 4,
      :name         => "sofronizar",
      :efecto       => "El monstruo caera dormido inmediantamente. El monstruo debe encontrarse en linea directa con el Heroe y tener 1-3PM.",
    }),
    Elfica.new({
      :id           => 5,
      :name         => "deformar la madera",
      :efecto       => "Cualquier arma hecha de madera se vuelve inservible.",
    }),
    Elfica.new({
      :id           => 6,
      :name         => "invisibilidad",
      :efecto       => "El heroe deja de ser visto por los monstruos. Solo podra moverse y abrir puertas.Si saca un 6 o realiza otra accion, el hechizo se cancela",
    }),
    Elfica.new({
      :id           => 7,
      :name         => "llamarada hipnótica",
      :efecto       => "Cualquier criatura o personaje en la misma sala/pasillo queda 1 turno catatónico sin hacer nada. Puede defenderse sacando menos que sus PM.",
    })
  ]
end

def elfica(id)
  elficas[id]
end
