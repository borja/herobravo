# encoding: UTF-8
def sacerdotes
  [
    {
      :id           => 0,
      :name         => "plegaria santa",
      :description  => "sin definir",
      :type         => "única",
      :nivel        => 2,
    },
    {
      :id           => 1,
      :name         => "aura de bienaventura",
      :description  => "sin definir",
      :type         => "pasiva",
      :nivel        => 2,
    },
    {
      :id           => 2,
      :nivel        => 3,
      :name         => "último ruego",
      :description  => "Se aplica cuando el sacerdote está muriendo.",
      :type         => "pasiva",
    },
    {
      :id           => 3,
      :name         => "armonía",
      :description  => "Si el sacerdote cura a 1 aliado, obtiene +1/Zen.",
      :type         => "pasiva"
    },
  ]
end