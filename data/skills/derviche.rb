# encoding: UTF-8
def derviches
  [
    {
      :id           => 0,
      :name         => "danza de la luna",
      :description  => "+1 dado de Ataque",
      :type         => "activa",
      :coste        => "6 movimiento - 1/rango",
      :nivel        => 2,
      :rangos       => 3,
    },
    {
      :id           => 1,
      :name         => "esquiva",
      :description  => "+1 Defensa vs un enemigo declarado.",
      :type         => "declarativa",
      :nivel        => 2,
      :rangos       => 4,
    },
    {
      :id           => 2,
      :name         => "dos armas",
      :description  => "Permite llevar un arma en la mano torpe, de tamaño igual o inferior al rango",
      :type         => "pasiva",
      :nivel        => 2,
      :rangos       => 3,
    },
    {
      :id           => 3,
      :name         => "baile de combate",
      :description  => "Permite atacar desde diferentes ángulos según el rango (diagonal, flancos, diagonales traseras)",
      :type         => "pasiva",
      :nivel        => 2,
      :rangos       => 3,
    },
    {
      :id           => 4,
      :name         => "agilidad felina",
      :description  => "Los enemigos no empujan al derviche en casillas colindantes a paredes",
      :type         => "pasiva",
      :nivel        => 3,
    },
    {
      :id           => 5,
      :name         => "acrobacias",
      :description  => "Puedes pasar a través de un enemigo, aún sin su consentimiento",
      :type         => "única",
      :nivel        => 3,
    },
    {
      :id           => 6,
      :name         => "paso de combate",
      :description  => "Permite dar 1 paso extra",
      :type         => "activa",
      :coste        => "3 movimiento",
      :rangos       => 3,
      :nivel        => 3,
    },
    {
      :id           => 7,
      :name         => "danza de la muerte",
      :description  => "Ataque con tu arma principal a todas las miniaturas de tu alrededor",
      :type         => "única",
      :nivel        => 4,
      :requisitos   => [3],
    },
    {
      :id           => 8,
      :name         => "gloria del héroe",
      :description  => "Ignora cualquier daño que le fuera a ser realizado al héroe. El efecto cesa al finalizar el turno del Malvado Brujo. Debe utilizarse ANTES de la tirada de ataque.",
      :type         => "única",
      :nivel        => 6,
    },
  ]
end
def derviche id ; derviches[id].merge({:char => 'derviche'}) end