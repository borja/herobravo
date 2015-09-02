# encoding: UTF-8
def caminantes
  [
    {
      :id           => 0,
      :name         => "golpe sombrío",
      :nivel        => 2,
      :description  => "1 PS: +1 potencia a un golpe (no-frontal) a melé.",
      :type         => "Activa"
    },
    {
      :id           => 1,
      :name         => "Sendero oscuro",
      :nivel        => 2,
      :description  => "Al pasar por una casilla en la que haya muerto un enemigo este turno, obtienes +1 PS.",
      :type         => "Reactiva"
    },
    {
      :id           => 2,
      :name         => "Recorrer la umbra",
      :nivel        => 2,
      :description  => "1 PS: Coloca tu miniatura en una casilla libre adyacente a una puerta de la misma sala o pasillo.",
      :type         => "Activa"
    },
    {
      :id           => 3,
      :name         => "Secuestrar sombra",
      :description  => "1 PS: Secuestra la sombra de su enemigo permitiendo un ataque a distancia. Al matar, se teleporta a su posición.",
      :type         => "Activa",
      :nivel        => 2,
    },
    
  ]
end

def caminante id ; caminantes[id] end