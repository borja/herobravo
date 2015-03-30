# encoding: UTF-8
def matadors
  [
    {
      :id           => 0,
      :name         => "ataque combinado",
      :description  => "el matador usa sus dos armas simultáneamente en un ataque conjunto.",
      :type         => "única"
    },
    {
      :id           => 1,
      :name         => "Dos armas",
      :description  => "el matador puede llevar un hacha de mano en la mano torpe",
      :type         => "pasiva"
    },
    {
      :id           => 2,
      :name         => "Arrojar",
      :description  => "el matador puede arrojar un arma como acción gratuita",
      :type         => "pasiva"
    },    
    {
      :id           => 3,
      :name         => "Sangre por sangre",
      :description  => "La fuerza de los golpes del matador es igual a su inferioridad numérica en meleé.",
      :type         => "pasiva"
    },
    {
      :id           => 4,
      :name         => "Tenaza del enano",
      :description  => "+1 Potencia al golpear por el flanco a enemigos con menos movimiento.",
      :type         => "pasiva"
    }
  ]
end

def matador id ; matadors[id] end