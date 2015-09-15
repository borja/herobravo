# encoding: UTF-8
def arqueros
  [
    {
      :id           => 0,
      :name         => "salto liviano",
      :description  => "+1 saltar fosos",
      :type         => "pasiva",
      :nivel        => 1,
    },
    {
      :id           => 1,
      :name         => "disparo oblicuo",
      :description  => "Permite disparar en diagonal",
      :type         => "pasiva",
      :nivel        => 2,
    },
    {
      :id           => 2,
      :name         => "disparo a bocajarro",
      :description  => "Permite disparar cuerpo a cuerpo",
      :type         => "pasiva",
      :nivel        => 2,
    },
    {
      :id           => 3,
      :name         => "disparo arcano",
      :description  => "+1 potencia ataque",
      :type         => "activa",
      :coste        => "1PM",
      :nivel        => 2,
    },
    {
      :id           => 4,
      :name         => "ataque furtivo",
      :description  => "Si un enemigo ataca a un aliado que este al lado del arquero, este puede atacar al monstruo con una daga",
      :type         => "única",
      :nivel        => 2,
    },
    {
      :id           => 5,
      :name         => "disparo firme",
      :description  => "+1 potencia a un dado de ataque",
      :type         => "activa",
      :coste        => "5 movimiento",
      :nivel        => 2,
    },
    {
      :id           => 6,
      :name         => "disparo múltiple",
      :description  => "1 tiro extra",
      :type         => "activa",
      :coste        => "5 movimiento",
      :nivel        => 3,
    },
    {
      :id           => 7,
      :name         => "Dominio del arco",
      :description  => "Permite disparar arcos sin recargar",
      :type         => "pasiva",
      :nivel        => 3,
    },
    {
      :id           => 8,
      :name         => "disparo de rebote",
      :description  => "Permite disparar hacia un objeto u objetivo, y el tiro acierta a un enemigo que no tenga a tiro",
      :type         => "pasiva",
      :nivel        => 4,
    },
    {
      :id           => 9,
      :name         => "disparo encantado",
      :description  => "Se imbuye un hechizo a una flecha. Si la flecha impacta, el objetivo recibe el hechizo.",
      :type         => "activa",
      :coste        => "1 magia",
      :nivel        => 4,
    },
    {
      :id           => 10,
      :name         => "lluvia de flechas",
      :description  => "1 tiro a todas las unidades dentro de la misma sala/pasillo.",
      :type         => "activa",
      :coste        => "5 PM",
      :nivel        => 5,
    },
    {
      :id           => 11,
      :name         => "fuego amigo",
      :description  => "Permite disparar a traves de unidades amigas",
      :type         => "pasiva",
      :nivel        => 5,
    },
    {
      :id           => 12,
      :name         => "cargar disparo",
      :description  => "Renuncia a su ataque para ganar el doble de potencia en su siguiente disparo",
      :type         => "declarativa",
      :nivel        => 5,
    },
    {
      :id           => 13,
      :name         => "tiro certero",
      :description  => "Por describir",
      :type         => "activa",
    },
    {
      :id           => 14,
      :name         => "arcanismo",
      :description  => "Si fallas, recuperas",
      :type         => "activa",
    },
    {
      :id           => 15,
      :name         => "temple",
      :description  => "Ganas puntos de sosiego (PS) al matar",
      :type         => "reactiva",
    },
    {
      :id           => 16,
      :name         => "salvavidas",
      :description  => "Ganas PS al matar si hay un aliado a melé",
      :type         => "reactiva",
    },
    {
      :id           => 17,
      :name         => "tiro desesperado",
      :description  => "Otorga X armadura",
      :type         => "activa",
      :coste        => "X PS",
    },
    {
      :id           => 18,
      :name         => "enfocar",
      :description  => "Ganas puntos de enfoque (PE) al renunciar al movimiento cuando hay enemigos en línea de visión.",
      :type         => "reactiva",
    },
    {
      :id           => 19,
      :name         => "tiro al corazón",
      :description  => "+1 a la fuerza por cada PS que tengas.",
      :type         => "activa",
      :coste        => "1PE",
    },
    {
      :id           => 20,
      :name         => "retroceso",
      :description  => "Puedes retroceder 1 casilla por cada exceso de daño al matar un enemigo, pudiendo golpear hacia atrás.",
      :type         => "única",
    },
    {
      :id           => 21,
      :name         => "retroceder",
      :description  => "Recuperas retroceso al esquivar.",
      :type         => "reactiva",
    },
    {
      :id           => 22,
      :name         => "quemarropa",
      :description  => "Ganas 1 PE al matar a melé.",
      :type         => "reactiva",
      :nivel        => 7
    },
  ]
end