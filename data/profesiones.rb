# encoding: UTF-8
def profesions
  [
    { :id        => 0,
      :name      => "alquimia",
      :aprendiz  => [
        { :id      => 0,
          :name    => "Aprendiz de alquimista",
          :coste   => 100,
          :efecto  => "Permite utilizar la mesa del alquimista",
        },
        {
          :id      => 1,
          :name    => "Mezclar jugos",
          :coste   => 100,
          :efecto  => "Permite mezclar 2 pociones iguales y obtener 1 poción del mismo nivel a elección.",
        },
        {
          :id      => 2,
          :name    => "Destilería",
          :coste   => 100,
          :efecto  => "Permite mezclar 2 pociones iguales y obtener 1 poción de un nivel superior a elección.",
        },
        {
          :id      => 3,
          :name    => "Poción antídoto",
          :coste   => 200,
          :efecto  => "Crea una poción que disipa los efectos de un veneno instantáneamente.",
          :crear   => 100,
          :venta   => 50,
        },
      ],
      :artesano  => [
        { :id      => 0,
          :name    => "Artesano alquimista",
          :coste   => 500,
          :efecto  => "Permite consumir hasta 2 pociones por turno, siempre que sean distintas.",
        },
        { :id      => 1,
          :name    => "Piedra filosofal",
          :coste   => 600,
          :efecto  => "1 piedra pómez, 1 aguamarina, 1 cráneo: La piedra filosofal.",
          :crear   => 200,
        }
      ],
      :maestro   => [
        { :id      => 0,
          :name    => "Maestro de alquimia",
          :coste   => 1000,
          :efecto  => "Permite repartir entre diferentes personajes los beneficios unitarios de una poción."
        }
      ],
    },
    { :id        => 1,
      :name      => "inscripción",
      :aprendiz  => [
        { :id      => 0,
          :name    => "Aprendiz de inscriptor",
          :coste   => 100,
          :efecto  => "Permite consumir hechizos insertándolos en pergaminos.",
        },
        {
          :id      => 1,
          :name    => "Cincelar",
          :coste   => 200,
          :efecto  => "Tallar runas es gratuito. Requiere tener 1 runa y 1 ranura previa.",
        },
        {
          :id      => 2,
          :name    => "Libro de hechizos",
          :coste   => 150,
          :efecto  => "Imbuye 6 hechizos de la misma escuela. Bono: +1Pot. a los hechizos de la escuela que se haya inscrito.",
          :matts   => [9,9,9],
          :crear   => 150,
          :venta   => 300,
        },
        {
          :id      => 3,
          :name    => "Origami",
          :coste   => 250,
          :efecto  => "Puedes vender pergaminos en blanco por 50g.",
        },
      ],
      :artesano  => [
        { :id      => 0,
          :name    => "Artesano inscriptor",
          :coste   => 500,
          :efecto  => "Permite consumir hasta dos pergaminos diferentes por turno.",
        }
      ],
      :maestro   => [
        { :id      => 0,
          :name    => "Maestro de inscripción",
          :coste   => 1000,
          :efecto  => "Permite combinar dos runas en una runa única."
        }
      ],
    },
    { :id        => 2,
      :name      => "taxidermia",
      :aprendiz  => [
        { :id      => 0,
          :name    => "Aprendiz de taxidermista",
          :coste   => 100,
          :efecto  => "Permite extraer bulbos de seda y pieles. (Éxito: 9+)",
        },
        {
          :id      => 1,
          :name    => "Desuello",
          :coste   => 150,
          :efecto  => "+1pot vs Bestias. Habilidad pasiva.",
        },
        {
          :id      => 2,
          :name    => "Fabricación de seda",
          :coste   => 150,
          :matts   => [0,0],
          :efecto  => "crea una túnica de seda que otorga +1 Def,+2 Mov a cambio de 2 madejas de seda. Se vende por 50g.",
        },
        {
          :id      => 3,
          :name    => "Peletería",
          :coste   => 250,
          :matts   => [2,2,2],
          :efecto  => "A cambio de 3 pieles se fabrica 1 Cota de cuero endurecida. Se vende por 100g.",
        },
        {
          :id      => 4,
          :name    => "Pulseras",
          :coste   => 50,
          :matts   => [2],
          :efecto  => "A cambio de una piel, puedes fabricar una pulsera de cuero (+0P), que cuenta como muñequera con un engarce.",
        },
      ],
      :artesano  => [
        { :id      => 0,
          :name    => "Artesano taxidermista",
          :coste   => 500,
          :efecto  => "Permite extraer pieles de criaturas mágicas. (Éxito: 8+) ",
        },
        {
          :id      => 5,
          :name    => "Hombreras encantadas",
          :coste   => 450,
          :efecto  => "2 cueros mágicos, 8 polvos arcanos: Crea unas hombreras de cuero (+2P) que otorgan +2 vs Fuego.",
        }
      ],
      :maestro   => [
        { :id      => 0,
          :name    => "Maestro de taxidermia",
          :coste   => 1000,
          :efecto  => "(Éxito 5+) al extraer pieles de cualquier criatura."
        }
      ],
    },
    { :id        => 3,
      :name      => "táctica",
      :aprendiz  => [
        { :id      => 0,
          :name    => "Aprendiz de táctico",
          :coste   => 100,
          :efecto  => "Permite reservar tu turno para el final de la ronda.",
        },
        {
          :id      => 1,
          :name    => "Empujar",
          :coste   => 200,
          :efecto  => "+1 Empujar. Habilidad pasiva.",
        },
        {
          :id      => 2,
          :name    => "Cuidado, Señor!",
          :coste   => 400,
          :efecto  => "Puedes advertir a un aliado para que encare a su agresor, como instinto, a cambio de perder su movimiento. Alcance: V.",
        },
        {
          :id      => 3,
          :name    => "Guerra de guerrillas",
          :coste   => 250,
          :efecto  => "Las trampas descubiertas mediante búsquedas, también se aplican a los enemigos.",
        },
        {
          :id      => 4,
          :name    => "Camuflaje de guerra",
          :coste   => 150,
          :matts   => [3],
          :efecto  => "Entras en sigilo de nivel 1",
        },
        {
          :id      => 5,
          :name    => "Muro de lanzas",
          :coste   => 200,
          :efecto  => "Si te sitúas entre un aliado con lanza y un enemigo en línea recta, le permites atacar al enemigo.",
        },
      ],
      :artesano  => [
        { :id      => 0,
          :name    => "Artesano táctico",
          :coste   => 500,
          :efecto  => "Al atraversarle, sus aliados ignorar la casilla de movimiento.",
        }
      ],
      :maestro   => [
        { :id      => 0,
          :name    => "Maestro de táctica",
          :coste   => 1000,
          :efecto  => "Ninguna criatura con menor empuje puede empujarle."
        }
      ],
    },
    { :id        => 4,
      :name      => "encantamiento",
      :aprendiz  => [
        { :id      => 0,
          :name    => "Aprendiz de encantador",
          :coste   => 100,
          :efecto  => "Permite triturar gemas y obtener polvo de encantamiento.",
        },
        {
          :id      => 1,
          :name    => "Encantar",
          :coste   => 250,
          :efecto  => "Utilizas polvos para encantar hasta que finaliza el reto: objetos sin encantamientos previos.",
        },
        {
          :id      => 2,
          :name    => "Desencantar",
          :coste   => 250,
          :efecto  => "Puedes utilizar polvos de calidad equivalente a una maldición para anularla.",
        },
        {
          :id      => 3,
          :name    => "Recargar",
          :coste   => 100,
          :efecto  => "El encantador puede invertir nX PM/PC para recargar un objeto sin cargar. N=Nivel de la propiedad mágica. X=nº cargas que quiere invertir. Nota: No funciona con objetos que funcionan 1/reto.",
        },
      ],
      :artesano  => [
        { :id      => 0,
          :name    => "Artesano encantador",
          :coste   => 500,
          :efecto  => "Puedes usar dos polvos de un nivel inferior para obtener uno superior.",
        },
        { :id      => 1,
          :name    => "Redirigir maldición",
          :coste   => 450,
          :efecto  => "Requiere una varita mágica: Redirige una maldición a la varita mágica, anulando el poder de la varita hasta final del reto.",
        },
        { :id      => 2,
          :name    => "XXX",
          :coste   => 450,
          :efecto  => "Crear nueva, por loot de misión.",
        }
      ],
      :maestro   => [
        { :id      => 0,
          :name    => "Maestro de encantamiento",
          :coste   => 1000,
          :efecto  => "Al final del reto puedes convertir en polvo de encantamiento, los hechizos sobrantes, según su nivel."
        }
      ],
    },
    { :id        => 5,
      :name      => "orfebrería",
      :aprendiz  => [
        { :id      => 0,
          :name    => "Aprendiz de orfebre",
          :coste   => 100,
          :efecto  => "Evita pagar por molestar al orfebre."
        },
        {
          :id      => 1,
          :name    => "Anillo de oro",
          :coste   => 200,
          :efecto  => "Los materiales cuestan 300g. Venderlo: 150g",
        },
        {
          :id      => 2,
          :name    => "Colgante de plata",
          :coste   => 350,
          :efecto  => "Materiales: 200g. Venderlo: 150g. Nota: No puede ser utilizado por tieflings.",
        },
        {
          :id      => 3,
          :name    => "Engarces I",
          :coste   => 300,
          :efecto  => "Añade 1 ranura gratuitamente a un objeto mundano.",
        },
        {
          :id      => 4,
          :name    => "Cabuchón I",
          :coste   => 350,
          :efecto  => "N+: Engasta gratuitamente una gema en una ranura. (N es el nivel de la gema).",
        },
        {
          :id      => 5,
          :name    => "Aguja de plata",
          :coste   => 300,
          :efecto  => "Permite a otro jugador engastar gratuitamente gemas en la ropa que haya creado como taxidermista.",
        },
      ],
      :artesano  => [
        { :id      => 0,
          :name    => "Artesano orfebre",
          :coste   => 500,
          :efecto  => ""
        },
        { :id      => 1,
          :name    => "Piedra filosofal",
          :coste   => 350,
          :efecto  => "Require piedra filosofal: 1 hematites + 1 polvo onírico + 200 piezas de oro: Lingote de mithril",
        },
        { :id      => 2,
          :name    => "Eslabón de Mithril",
          :coste   => 150,
          :efecto  => "1 Lingote de mthril + hechizo (aliento de dragón): 4 eslabones de mithril.",
        }
      ],
      :maestro   => [
        { :id      => 0,
          :name    => "Maestro de orfebrería",
          :coste   => 1000,
          :efecto  => "TBD"
        }
      ],
    },
    { :id        => 6,
      :name      => "carpintería",
      :aprendiz  => [
        { :id      => 0,
          :name    => "Aprendiz de carpintero",
          :coste   => 100,
          :efecto  => "Permite destruir mobiliario para obtener madera. (Éxito 9+)"
        },
        {
          :id      => 1,
          :name    => "Fabricar flechas",
          :coste   => 100,
          :matts   => [5],
          :efecto  => "1 pieza : flechas infinitas (a todos).",
        },
        {
          :id      => 2,
          :name    => "Ballesta de repetición",
          :coste   => 300,
          :matts   => [5,5,5,5],
          :efecto  => "4 piezas : ballesta que no necesita recargase. Se vende por 200g.",
        },
        {
          :id      => 3,
          :name    => "Cayado",
          :coste   => 150,
          :matts   => [5,5,5],
          :efecto  => "3 piezas : bastón que ataca con 1 dado y en diagonal. Se vende por 50g.",
        }
      ],
      :artesano  => [
        { :id      => 0,
          :name    => "Artesano carpintero",
          :coste   => 500,
          :matts   => [5,5,5],
          :efecto  => "Permite usar 3 piezas de madera para crear una talla exquisita."
        },
        {
          :id      => 1,
          :name    => "Báculo",
          :coste   => 300,
          :matts   => [6,6,6],
          :efecto  => "3 tallas exquisitas: bastón que ataca con 2 dados y en diagonal. Se vende por 150g.",
        },
        {
          :id      => 2,
          :name    => "Varita mágica",
          :coste   => 100,
          :matts   => [6,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7],
          :efecto  => "Diamante + 200 oro: Varita (1 mano) que permite lanzar 2 hechizos/turno.",
        },
        {
          :id      => 3,
          :name    => "Atril de animista",
          :coste   => 450,
          :matts   => [6,6,5,5,8],
          :efecto  => "Joya del artesano + joya simbionte: Permite crear un atril que persigue al poseedor. El atril permite portar un libro en una mano extra.",
        }
      ],
      :maestro   => [
        { :id      => 0,
          :name    => "Maestro de carpintería",
          :coste   => 1000,
          :matts   => [6,6,6],
          :efecto  => "Permite usar 3 tallas exquisitas para crear una obra maestra."
        }
      ],
    },
  ]
end

def profesion id ; profesions[id] end
def grados ; ['aprendiz', 'artesano', 'maestro'] end
