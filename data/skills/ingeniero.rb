# encoding: UTF-8
def ingenieros
  [
    {
      :id           => 0,
      :name         => "artillería",
      :description  => "1 pieza: permite disparar a distancia con el arma (pudiendo ser melee) equipada.",
      :type         => "activa"
    },
    {
      :id           => 1,
      :name         => "chatarrero",
      :description  => "Permite obtener una pieza al desactivar satisfactoriamente una trampa",
      :type         => "Pasiva"
    },
    {
      :id           => 2,
      :name         => "desvalijar",
      :description  => "Permite obtener una pieza de las puertas.",
      :type         => "activa"
    },
    {
      :id           => 3,
      :name         => "fuego amigo",
      :description  => "Permite disparar a través de aliados sin dañarlos.",
      :type         => "pasiva"
    },
    {
      :id           => 4,
      :name         => "retroceso",
      :description  => "El exceso de potencia hará que el ingeniero retroceda, pudiendo golpear al posible enemigo con el que se choque.",
      :type         => "pasiva"
    },
    {
      :id           => 5,
      :name         => "disparo perforante",
      :description  => "El exceso de daño que no se pueda parar un enemigo, le atravesará, yendo el disparo hacia otro enemigo que esté detrás.",
      :type         => "pasiva"
    },
    {
      :id           => 6,
      :name         => "éter",
      :description  => "+3 éter al inicio del juego.",
      :type         => "Pasiva"
    },
    {
      :id           => 7,
      :name         => "cachivache",
      :description  => "Comienzas el reto con 1 cachivache (un droide con forma de araña y un depósito líquido con 3 puntos de éter). A cambio de 2 piezas, puedes regenerarlo. Puede hacer las siguientes funciones: autodestrucción (dado de fuego), +1 a buscar si se coloca en el casco,  permite disparo oblicuo si se coloca en la mirilla.",
      :type         => "pasiva",
      :nivel        => 3,
    },
    {
      :id           => 8,
      :name         => "diógenes",
      :description  => "Si tienes éxito, no gastas piezas.",
      :type         => "pasiva"
    },
    {
      :id           => 9,
      :name         => "disparo doble",
      :description  => "Permite disparar 2 veces.",
      :type         => "pasiva"
    },
    {
      :id           => 10,
     :name         => "Disparo a bocajarro",
      :description  => "Permite disparar a melee con el arma, otorgando fuerza +1 en el disparo",
      :type         => "pasiva"
    },
    {
      :id           => 11,
      :name         => "Éter curativo",
      :description  => "Permite utilizar el eter para recuperar puntos de cuerpo",
      :type         => "pasiva"
    },
    {
      :id           => 12,
      :name         => "Maestro de cachivaches",
      :description  => "Permite llevar 1 cachivache adicional",
      :type         => "pasiva"
    },
    {
      :id           => 13,
      :name         => "Explotapelota",
      :description  => "1 Éter: fabrica B.O.M.B.I.T.A (Balón-Orgánico-Mecánico-Bastante-Inestable-Totalmente-Abrasador) (Dura hasta final de reto: se usa como arrojadiza, pudiendo rebotar por cada escudo negro. Causa 1d6 daños de fuego en una área 2x2).",
      :type         => "Activa",
      :nivel        => 4
    },
    {
      :id           => 14,
      :name         => "Recoger fosfitos",
      :description  => "El ingeniero puede fabricar pimienta cada vez que invierta una acción inmediatamente después de fallar un disparo.",
      :type         => "Reactiva",
      :nivel        => 6
    },
    {
      :id           => 15,
      :name         => "francotirador",
      :description  => "3 de movimiento: El siguiente disparo de artillería será con +1 potencia. El bonificador desaparece si el ingeniero se mueve.",
      :type         => "Activa",
      :nivel        => 7
    },
  ]
end