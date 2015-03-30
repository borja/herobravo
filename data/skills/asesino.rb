# encoding: UTF-8
def asesinos
  [
    {
      :id           => 0,
      :name         => "sigilo",
      :description  => "Si no hay objetivos visibles el asesino entra en sigilo. Ciertos objetivos son inmunes al sigilo. El efecto de esta habilidad cesará cuando el asesino realice una acción distinta a movimiento. Rango I: los enemigos no empujan al asesino. Rango II: Los enemigos dejan de ver al asesino pero se pierde 1/2 MOV. Rango III: Se pierde la penalización de MOV. ",
      :type         => "Reactiva"
    },
    {
      :id           => 1,
      :name         => "dos armas",
      :description  => "Permite llevar un arma en la mano torpe. Rango I: permite llevar armas pequeñas",
      :type         => "Pasiva"
    },
    {
      :id           => 2,
      :name         => "puñalada trapera",
      :description  => "Requiere daga.Si tras haber declarado un ataque contra un aliado el enemigo se desplaza por la zona de combate del asesino, este podrá realizar un ataque. Se puede emplear más de 1 puñalada trapera por turno.",
      :type         => "Única"
    },
    {
      :id           => 3,
      :name         => "emboscada",
      :description  => "Requiere sigilo y daga. Añade 3 dados de combate a la tirada de ataque. Rango I: Cuesta 5 MOV/emboscada. Rango II: Cuesta 4 MOV/emboscada.",
      :type         => "Activa"
    },
    {
      :id           => 4,
      :name         => "acrobacias",
      :description  => "Permite que el asesino atraviese una casilla ocupada por un enemigo u obstáculo. Se pueden realizar acrobacias dobles.",
      :type         => "Única"
    },
    {
      :id           => 5,
      :name         => "venenos",
      :description  => "El asesino recubre sus armas con venenos. Rango I: añade un dado de combate blanco a tus ataques. Rango II: añade un dado de combate negro a tus ataques. Estos venenos pueden resistirse.",
      :type         => "Pasiva"
    },
    {
      :id           => 6,
      :name         => "dagas voladoras",
      :description  => "El asesino es capaz de realizar ataques extra con dagas. Cada rango en esta habilidad permite lanzar una daga extra. Alcance: 5.",
      :type         => "Pasiva"
    },
    {
      :id           => 7,
      :name         => "honor entre ladrones",
      :description  => "El asesino y sus aliados cercanos duplican sus bonificaciones de daño por la espalda. Alcance: Sala-Pasillo. Rango II: triplica bonificadores por la espalda.",
      :type         => "Pasiva"
    },
    {
      :id           => 8,
      :name         => "lanzamiento preciso",
      :description  => "Permite al asesino lanzar sus dagas en diagonal y con desplazamientos laterales. Las dagas no pueden retroceder sus movimientos y siempre salen del frente del asesino.",
      :type         => "Pasiva"
    },
    {
      :id           => 9,
      :name         => "paso de sombras",
      :description  => "añade +1 rango de sigilo al asesino. Rango I: coste 2PM. Rango II: coste 1PM.",
      :type         => "Activa"
    },
    {
      :id           => 10,
      :name         => "golpe a la carótida",
      :description  => "Requiere dagas. No utilizable en ciertos enemigos. El asesino ignora la armadura física del objetivo.",
      :type         => "Única"
    },
    {
      :id           => 11,
      :name         => "subterfugio",
      :description  => "Otorga al asesino +1 rango de sigilo al matar cuerpo a cuerpo. No funciona con todos los enemigos.",
      :type         => "Reactiva"
    },
    {
      :id           => 12,
      :name         => "siempre al acecho",
      :description  => "Otorga +1 rango de sigilo al atravesar una puerta.",
      :type         => "Reactiva"
    },
    {
      :id           => 13,
      :name         => "paso en falso",
      :description  => "Permite al asesino desplazarse casillas extra tras haber realizado la acción de MOV. Coste 4MOV.",
      :type         => "Activa"
    },
    {
      :id           => 14,
      :name         => "sombras gemelas",
      :description  => "Confiere la sombra del asesino a la sombra de un aliado. La sombra del asesino puede actuar como el propio asesino salvo en desplazamientos y ataques básicos.",
      :type         => "Declarativa"
    },
    {
      :id           => 15,
      :name         => "intimidar",
      :description  => "Tras matar cuerpo a cuerpo, el asesino puede intimidar a los enemigos, infligiéndoles miedo. Alcance: Sala/Pasillo y Visión en campo abierto.",
      :type         => "Activa"
    },
    {
      :id           => 16,
      :name         => "estocada limpia",
      :description  => "Tras matar cuerpo a cuerpo, el asesino puede tirar un d6 y esa será la cantidad de movimiento extra de la que dispondrá.",
      :type         => "Activa"
    },
    {
      :id           => 17,
      :name         => "puñal de sombras",
      :description  => "Requiere daga. El asesino recupera 1 puñalada trapera tras matar en sigilo.",
      :type         => "Reactiva"
    },
    {
      :id           => 18,
      :name         => "viaje umbral",
      :description  => "1 vez por turno, el asesino puede aparecer detrás de su sombra gemela. Coste: acción de MOV.",
      :type         => "Declarativa"
    },
    {
      :id           => 19,
      :name         => "gloria del héroe",
      :description  => "Ignora cualquier daño que le fuera a ser realizado al héroe. El efecto cesa al finalizar el turno del Malvado Brujo. Debe utilizarse ANTES de la tirada de ataque.",
      :type         => "Única"
    },
    {
      :id           => 20,
      :name         => "acribillar",
      :description  => "Esta habilidad no se puede utilizar si ya se ha lanzado alguna daga voladora. Permite al asesino lanzar 3 dagas en conjunto. Si se emplea esta habilidad, no se podrán lanzar más dagas el resto del turno.",
      :type         => "Activa"
    },
  ]
end
def asesino id ; asesinos[id] end