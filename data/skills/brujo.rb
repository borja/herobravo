# encoding: UTF-8
def brujos
  [
    {
      :id           => 0,
      :name         => "Pacto Demoníaco",
      :description  => "1 PM: + 1 dado azul de defensa este turno.",
      :type         => "Instinto",
      :nivel        => 1,
    },
    {
      :id           => 1,
      :name         => "Brujería",
      :description  => "2 PC: + 1 Punto de Sombra.",
      :type         => "Activa",
      :nivel        => 2,
    },
    {
      :id           => 1,
      :name         => "Secuestrar sombra",
      :description  => "1 PS: Se convierte en la sombra de su enemigo permitiendo un ataque a distancia. Si consigue matar al enemigo, recupera 1 hechizo.",
      :type         => "Activa",
      :nivel        => 2,
    },
    {
      :id           => 2,
      :name         => "Invocar diablillo",
      :description  => "2 PC: Invoca un diablillo 1/1, con 1 PM y PC.",
      :type         => "Activa",
      :nivel        => 2,
    },
    {
      :id           => 3,
      :name         => "Maldecir",
      :description  => "1 PC: Ejecuta un hechizo contra un enemigo. Si sobrevive, tirará 1DC. Con una calavera, sufrirá su efecto todos los turnos.",
      :type         => "Activa",
      :nivel        => 2,
    },
    {
      :id           => 4,
      :name         => "Demonología sanguinaria",
      :description  => "Si en su turno se autoinflinge daños por habilidades, sus invocaciones obtienen +1 de ataque hasta que sean destruidas.",
      :type         => "Reactiva",
      :nivel        => 3,
    },
    {
      :id           => 5,
      :name         => "Demonología secreta",
      :description  => "Los demonios invocados tienen +1 PC por cada elemento mágico disponible durante su invocación.",
      :type         => "Pasiva",
      :nivel        => 3,
    },
    {
      :id           => 6,
      :name         => "Aura de vileza",
      :description  => "La resistencia a tenebro aumenta +1 por cada hechizo de sombras disponible.",
      :type         => "Pasiva",
      :nivel        => 3,
    },
    {
      :id           => 7,
      :name         => "Consumir lacayo",
      :description  => "1/reto: destruye a un demonio invocado y recupera el doble de su vida en PC.",
      :type         => "Única",
      :nivel        => 3,
    },
    {
      :id           => 8,
      :name         => "Atormentar",
      :description  => "1/reto: Maldice a un objetivo. Al principio de su turno y hasta que muera, ejecutarás (sin coste) sobre él, un hechizo disponible aleatorio.",
      :type         => "Única",
      :nivel        => 4,
    },
    {
      :id           => 8,
      :name         => "Súcubo",
      :description  => "3 PC: Invoca una súcubo 3/3, con 2 PM y PC, y con la habilidad seducción.",
      :type         => "Activa",
      :nivel        => 4,
    },
    {
      :id           => 9,
      :name         => "Vínculo demoníaco",
      :description  => "La defensa base del brujo pasa a ser igual a la de su demonio invocado.",
      :type         => "Reactiva",
      :nivel        => 4,
    },
    {
      :id           => 10,
      :name         => "Garras abisales",
      :description  => "+1 potencia de los demonios invocados al atacar enemigos no-demoníacos.",
      :type         => "Pasiva",
      :nivel        => 5,
    },
    {
      :id           => 11,
      :name         => "Condenación",
      :description  => "-1 PM permanente al inicio del reto: +1 magia adicional a elegir en cada set de magia.",
      :type         => "Pasiva",
      :nivel        => 5,
    },
    {
      :id           => 12,
      :name         => "Juramento sombrío",
      :description  => "1PC: El demonio invocado obtiene +1 de fuerza este turno. (Máximo: número de veces que se adquiere esta habilidad)",
      :type         => "Activa",
      :nivel        => 6,
    },
    {
      :id           => 13,
      :name         => "gloria del héroe",
      :description  => "Ignora cualquier mal. Se debe declarar al inicio del turno del Malvado Brujo.",
      :type         => "única",
      :nivel        => 6,
    },
  ]
end

def brujo id ; brujos[id] end