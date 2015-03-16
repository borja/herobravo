# encoding: UTF-8
def estados
  [
    {
      :id     => 0,
      :nombre => "aturdido",
      :efecto => "Pierdes tu próximo turno.",
    },
    {
      :id     => 1,
      :nombre => "interrumpido",
      :efecto => "Pierdes el resto de tu turno.",
    },
    {
      :id     => 2,
      :nombre => "conmocionado",
      :efecto => "No puedes atacar ni mover. (Podrás defenderte)",
    },
    {
      :id     => 3,
      :nombre => "dormido",
      :efecto => "Aturdido (mientras dure el efecto) + Dormido. Despertará con : 6+ ó al ser golpeado.",
    },
    {
      :id     => 4,
      :nombre => "silenciado",
      :efecto => "No puedes lanzar hechizos ni gritos de batalla.",
    },
    {
      :id     => 5,
      :nombre => "poseído",
      :efecto => "Eres controlado por tu oponente.",
    },
    {
      :id     => 6,
      :nombre => "enajenado",
      :efecto => "Debes tirar la tabla de locura.",
    },
    {
      :id     => 7,
      :nombre => "moribundo",
      :efecto => "-1PC al realizar una acción. Los moribundos tumbados doblan sus turnos de agonía. Excepciones: Girar y el paso gratuito de movimiento.",
    },
    {
      :id     => 8,
      :nombre => "paralizado",
      :efecto => "No puedes mover, -2 de ataque y -2 de defensa.",
    }
  ]
end

def estado id ; estados[id] end