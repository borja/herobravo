# encoding: UTF-8
def conjuradors
  [
    {
      :id           => 0,
      :name         => "Conjurar en letargo",
      :description  => "Permite lanzar hechizos de tipo conjuro en el turno del primer héroe.",
      :type         => "Pasiva",
    },
    {
      :id           => 1,
      :name         => "Biblioteca",
      :description  => "Número de hechizos que puede utilizar el conjurador en un reto. Aumentan a 1/nivel y empieza por 9 hechizos.",
      :type         => "Activa",
    },
    {
      :id           => 2,
      :name         => "Levitar",
      :description  => "A cambio de 1 punto de mente (PM), el conjurador levita.",
      :type         => "Activa",
    },
    {
      :id           => 3,
      :name         => "Tutor",
      :description  => "A cambio de una magia, el conjurador puede hacer un hechizo aleatorio del nivel máximo de hechizos +1 que puede ejecutar normalmente.",
      :type         => "Activa",
    },
    {
      :id           => 4,
      :name         => "Sadismo arcano",
      :description  => "Al matar con magia, gana 1 PM.",
      :type         => "Activa",
    },
    {
      :id           => 5,
      :name         => "Secreto rístico",
      :description  => "El conjurador le otorga esta habilidad a un aliado, provocando que éste cuando mate, el conjurador pueda realizar un hechizo gratuito/muerte en el mismo turno del aliado.",
      :type         => "Activa",
    },
    {
      :id           => 6,
      :name         => "Insuflar maná",
      :description  => "El conjurador le puede ceder su mente a un aliado.",
      :type         => "Activa",
    },
    {
      :id           => 7,
      :name         => "Explosión arcana",
      :description  => "Alrededor del conjurador hay X daños peana con peana, por cada X PM invertidos.",
      :type         => "Activa",
    },
    {
      :id           => 8,
      :name         => "Teleportarse",
      :description  => "El conjurador se desplaza tantas casillas como su mente, sin atravesar muros.",
      :type         => "Única",
    },
    {
      :id           => 9,
      :name         => "Falla",
      :description  => "Al fallar una magia, gana 1 teleport",
      :type         => "Activa",
    },
    {
      :id           => 10,
      :name         => "Meditar",
      :description  => "Durante un turno, y si hay enemigos a la vista, el conjurador gana 1d6 de mente + 2.",
      :type         => "Activa",
    },
    {
      :id           => 11,
      :name         => "Mentor",
      :description  => "Cuando se usa una magia, ya sea en un aliado o él mismo, el conjurador puede recuperarla con 1d6. Nivel (1->6+; 2->5+; 3->4+; 4->3+)",
      :type         => "Activa",
    },
    {
      :id           => 12,
      :name         => "Perseverancia",
      :description  => "Consumir toda su mente: Gloria del Héroe",
      :type         => "Activa",
    },
    {
      :id           => 13,
      :name         => "Conjuro deseado",
      :description  => "A cambio de 3PM, el conjurador tiene el conjuro que desee de nivel 1",
      :type         => "Activa",
    },
    {
      :id           => 14,
      :name         => "Simetría arcana",
      :description  => "Consumir todo su movimiento hace que el siguiente conjuro sea con +1 potencia",
      :type         => "Activa",
    },
  ]
end
def conjurador id ; conjuradors[id] end