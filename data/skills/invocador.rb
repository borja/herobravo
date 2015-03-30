# encoding: UTF-8
def invocadors
  [
    {
      :id           => 0,
      :name         => "invocar elemental de fuego",
      :description  => "A cambio de una magia de fuego, invoca un elemental de fuego que al matar, ataca con dados negros.",
      :type         => "activa"
    },
    {
      :id           => 1,
      :name         => "invocar elemental de agua",
      :description  => "A cambio de una magia de agua, invoca un elemental de agua que ataca y puede curar 1vez/reto al invocador o a un aliado.",
      :type         => "activa"
    },
    {
      :id           => 2,
      :name         => "persistencia",
      :description  => "2PM: Evita la muerte de un elemental invocado",
      :type         => "activa"
    },
    {
      :id           => 3,
      :name         => "invocar elemental mejorado",
      :description  => "Los elementales invocados obtienen 1PC adicional.",
      :type         => "pasiva"
    },
  ]
end

def invocador id; invocadors[id] end