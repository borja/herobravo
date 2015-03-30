# encoding: UTF-8
def hechiceros
  [
    {
      :id           => 0,
      :name         => "hechizar",
      :description  => "El hechicero puede ejecutar magias elementales",
      :type         => "pasiva",
    },
    {
      :id           => 1,
      :name         => "recuperar",
      :description  => "6+: Recupera una magia",
      :type         => "pasiva",
    },
    {
      :id           => 2,
      :name         => "chistera mágica",
      :description  => "acción: permite almacenar una magica en 'chistera': el hechizo se recuperará pero deberá ser ejecutado el primero",
      :type         => "activa",
    },
    {
      :id           => 3,
      :name         => "Risticismo",
      :description  => "Al recuperar con hechicería se recupera chistera mágica",
      :type         => "disparada",
    },
    {
      :id           => 4,
      :name         => "Diabolismo arcano",
      :description  => "al recuperar con hechicería el hechizo ejecutado se lanza con diablura.",
      :type         => "disparada",
    },
    {
      :id           => 5,
      :name         => "Magia intrépida",
      :description  => "Enchisterar es una acción gratuita.",
      :type         => "pasiva",
    },
    {
      :id           => 6,
      :name         => "Réplica",
      :description  => "En lugar de recuperar una magia, puedes lanzar una copia de la misma. En caso de ser posible ha de ser a un objetivo diferente.",
      :type         => "reactiva",
    },
    {
      :id           => 7,
      :name         => "Recuperar II",
      :description  => "5+: Recupera una magia.",
      :type         => "reactiva",
    },
    {
      :id           => 8,
      :name         => "gloria del héroe",
      :description  => "Ignora cualquier daño que le fuera a ser realizado al héroe. El efecto cesa al finalizar el turno del Malvado Brujo. Debe utilizarse ANTES de la tirada de ataque.",
      :type         => "Única"
    },
  ]
end

def hechicero id ; hechiceros[id] end