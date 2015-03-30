# encoding: UTF-8
def brujos
  [
    {
      :id           => 0,
      :name         => "Brujería",
      :description  => "A cambio de 2 PC el brujo recupera 1 Punto de Sombra (1 PS)",
      :type         => "Activa"
    },
    {
      :id           => 1,
      :name         => "Secuestrar sombra",
      :description  => "A cambio de 1 PS el tiefling se convierte en la sombra de su enemigo permitiendo un ataque a distancia. Si consigue matar al enemigo, el brujo gana un hechizo.",
      :type         => "Activa"
    },
    {
      :id           => 2,
      :name         => "Invocar diablillo",
      :description  => "A cambio de 2 PC el brujo invoca un diablillo 1/1",
      :type         => "Activa"
    },
    {
      :id           => 3,
      :name         => "Maldecir",
      :description  => "sin definir",
      :type         => "Única"
    },
  ]
end

def brujo(id)
  brujos[id]
end
