# encoding: UTF-8
def matadors
  [
    {
      :id           => 0,
      :name         => "Ataque combinado",
      :description  => "el matador usa sus dos armas simultáneamente en un ataque conjunto.",
      :type         => "única",
      :nivel        => 2,
    },
    {
      :id           => 1,
      :name         => "Dos armas",
      :description  => "el matador puede llevar un hacha de mano en la mano torpe",
      :type         => "pasiva",
      :nivel        => 2,
    },
    {
      :id           => 2,
      :name         => "Arrojar",
      :description  => "el matador puede arrojar un arma como acción gratuita",
      :type         => "pasiva",
      :nivel        => 2,
    },    
    {
      :id           => 3,
      :name         => "Sangre por sangre",
      :description  => "La fuerza de los golpes del matador es igual a su inferioridad numérica en meleé.",
      :type         => "reactiva",
      :nivel        => 3,
    },
    {
      :id           => 4,
      :name         => "Tenaza del enano",
      :description  => "+1 Potencia al golpear por el flanco a enemigos con menos movimiento.",
      :type         => "reactiva",
      :nivel        => 3,
    }
  ]
end
def matador id ; matadors[id].merge({:char => 'matador'}) end