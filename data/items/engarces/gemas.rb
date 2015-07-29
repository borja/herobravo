# encoding: UTF-8
def gemas
  [
    Gema.new({ :id => 0,  :name => "halita", :fits => {} }),
    Gema.new({ :id => 1,  :name => "antracita", :fits => {} }),
    Gema.new({ :id => 2,  :name => "pirita", :fits => {} }),
    Gema.new({ :id => 3,  :name => "serpentina", :fits => {
      :arma   => "envenena"
    } }),
    Gema.new({ :id => 4,  :name => "ojo de tigre", :fits => {
      :armadura => "Los ataques por el flanco se consideran frontales.",
    } }),
    Gema.new({ :id => 5,  :name => "hematites", :fits => {} }),
    Gema.new({ :id => 6,  :name => "piedra pómez", :fits => {} }),
    Gema.new({ :id => 7,  :name => "cuarzo", :fits => {} }),
    ## Gemas Infrecuentes
    Gema.new({ :id => 8,  :name => "almandino", :fits => {} }),
    Gema.new({ :id => 9,  :name => "heliotropo", :fits => {} }),
    Gema.new({ :id => 10, :name => "turquesa", :fits => {} }),
    Gema.new({ :id => 11, :name => "lapislázuli", :fits => {
      :hombros  => "2 escudos negros al defender: magia de agua nivel 1 aleatoria",
      :pecho    => "+1 vs Escarcha",
    } }),
    Gema.new({ :id => 12, :name => "espinela", :fits => {
      :pecho    => "+1 vs Peste",
    } }),
    Gema.new({ :id => 13, :name => "hessonita", :fits => {
      :anillo   => "+2 PM",
    } }),
    Gema.new({ :id => 14, :name => "malaquita", :fits => {} }),
    Gema.new({ :id => 15, :name => "obsidiana", :fits => {
      :pecho    => "+1 vs Tenebro",
    } }),
    ## Gemas Valiosas
    Gema.new({ :id => 16, :name => "jade", :fits => {
      :pecho    => "+2 vs Peste",
    } }),
    Gema.new({ :id => 17, :name => "aguamarina", :fits => {
      :pies     => "2 escudos blancos -> 1 genio",
      :arma     => "+1 dado de escarcha",
      :pecho    => "+2 vs Escarcha",
    } }),
    Gema.new({ :id => 18, :name => "ámbar", :fits => {
      :pecho    => "+2 vs Rayo",
    } }),
    Gema.new({ :id => 19, :name => "piropo", :fits => {
      :pecho    => "+2 vs Calor",
    } }),
    Gema.new({ :id => 20, :name => "olivino", :fits => {} }),
    Gema.new({ :id => 21, :name => "perla", :fits => {
      :cabeza => "5/reto: El ataque se considera bendito."
    } }),
    Gema.new({ :id => 22, :name => "jaspe", :fits => {} }),
    Gema.new({ :id => 23, :name => "coral", :fits => {} }),
    ## Piedras Preciosas
    Gema.new({ :id => 24, :name => "amatista", :fits => {
      :cabeza   => "+1 infundir miedo",
      :cuello   => "+1 magia de sombras de nivel 2 a elegir al inicio del reto.",
      :pecho    => "+3 vs Tenebro",
      :espalda  => "Al huir invocas un espectro en tu espalda.",
      :anillo   => "+1 potencia a las magias de sombras.",
      :muñecas  => "Golpes inflingidos pueden ser profanos",
      :arma     => "+1 dado profano al ataque.",
    } }),
    Gema.new({ :id => 25, :name => "esmeralda", :fits => {
      :cuello   => "+1 magia de tierra de nivel 2 a elegir al inicio del reto.",
      :cabeza   => "Recupera 1PC en cada fase trepidante",
      :pecho    => "+3 vs Peste",
      :espalda  => "+1 turno de envenamiento a tu agresor por la espalda.",
      :anillo   => "+1 potencia a las magias de tierra.",
      :arma     => "+1 dado de peste al ataque.",
      :cadena   => " +1 magia élfica",
    } }),
    Gema.new({ :id => 26, :name => "zafiro", :fits => {
      :cuello   => "+1 magia de agua de nivel 2 a elegir al inicio del reto.",
      :cabeza   => "+1 PM",  
      :pecho    => "+3 vs Escarcha",
      :espalda  => "+1 turno de congelación a tu agresor por la espalda.",
      :anillo   => "+1 potencia a las magias de agua.",
      :arma     => "+1 dado de escarcha al ataque.",
      :hombros  => "+1 PM",
    } }),
    Gema.new({ :id => 27, :name => "topacio", :fits => {
      :cuello   => "+1 nivel del tesoro al obtener: ¡Oro!",
      :cabeza   => "+1 al dado más cercano al jugador al tirar tesoro",
      :pecho    => "+3 vs Rayo",
      :espalda  => "Al ser atacado por la espalda: +1 fuerza a un dado de rayo (interruptor)",
      :anillo   => "+1 px al obtener un resultado doble en el tesoro (máximo 1 por topacio)",
      :arma     => "+1 dado de rayo al ataque.",
    } }),
    Gema.new({ :id => 28, :name => "rubí", :fits => {
      :cuello   => "+1 magia de fuego de nivel 2 a elegir al inicio del reto.",
      :cabeza   => "+1 PC",
      :pecho    => "+3 vs Calor",
      :espalda  => "+1 turno ardiendo de tu agresor por la espalda.",
      :anillo   => "+1 potencia a las magias de fuego.",
      :pies     => "+1 PC y +1 PM",
      :arma     => "+1 dado de fuego al ataque.",
    } }),
    Gema.new({ :id => 29, :name => "diamante", :fits => {
      :cuello   => "1/reto: No puedes ser objetivo de hechizos ni habilidades (Instinto)",
      :cabeza   => "+1 reputación",
      :pecho    => "+1 Protección",
      :espalda  => "+1 dado blanco al defender por la espalda (águila: inmune, martillo: -1 potencia)",
      :anillo   => "-1 potencia a las magias enemigas",
      :cadena   => "+ 1 potencia defensiva",
      :arma     => "+1 dado sagrado al ataque.",
    } }),
    Gema.new({ :id => 30, :name => "jacinto", :fits => {
      :cuello   => "+1 magia de sangre de nivel 2 a elegir al inicio del reto.",
      :cabeza   => "+1 fuerza a un éxito al atacar.",
      :pecho    => "-1 fuerza de un dado del atacante.",
      :espalda  => "+1 turno de sangrado de tu agresor por la espalda.",
      :anillo   => "+1 potencia a las magias de sangre.",
      :arma     => "+1 dado desangrador al ataque.",
    } }),
    Gema.new({ :id => 31, :name => "ágata", :fits => {
      :cuello   => "+1 magia de aire de nivel 2 a elegir al inicio del reto.",
      :cabeza   => "+1 movimiento",
      :pecho    => "+3 vs Psiónico",
      :espalda  => "-1 flanco al orientar tu espalda contra un muro o un enano.",
      :anillo   => "+1 potencia a las magias de aire.",
      :arma     => "-1 al calibre del arma al ser empuñada.",
    } }),
    ## Piedras de Poder
    Gema.new({ :id => 32, :name => "cráneo", :fits => {
      :armadura => "Los dados de defensa que aporte la armadura tienen éxito con escudo negro.",
      :arma     => "Los dados de ataque que aporte el arma tienen éxito con escudo negro."
    } }),
    Gema.new({ :id => 33, :name => "piedra lunar", :fits => {} }),
    Gema.new({ :id => 34, :name => "rama de olivo", :fits => {} }),
    Gema.new({ :id => 35, :name => "glicerita", :fits => {} }),
    Gema.new({ :id => 36, :name => "diestra", :fits => {
      :armadura => "No puede ser objetivo de un ataque en conjunto.",
    } }),
    Gema.new({ :id => 37, :name => "siniestra", :fits => {
      :armadura => "Solo puede ser atacado una vez por turno.",
    } }),
    Gema.new({ :id => 38, :name => "ónice", :fits => {} }),
    Gema.new({ :id => 39, :name => "sigmarita", :fits => {} }),
    ## Gemas Legendarias
    Gema.new({ :id => 40, :name => "perla negra", :fits => {
      :cuello   => "Otorga el legendario navío 'La perla negra'. El objetivo causa miedo +1. +20 al oro del tesoro, por nivel del tesoro.",
      :cabeza   => "Los monstruos errantes no-muertos que no superen una tirada de miedo lucharán a tu servicio. +1 causar miedo.",
      :arma     => "+1 potencia. Si el turno anterior no causó heridas, atacará con dados negros. +1 de fuerza al atacar por la espalda.",
    } }),
    Gema.new({ :id => 41, :name => "infernalita", :fits => {
      :cuello   => "+1 maestría y potencia a los hechizos de fuego, sangre y sombras.",
      :cabeza   => "Al fallar un hechizo/ataque con fuego recuperas una carga. 2 cargas: Lanzas derretir la piedra. 3 cargas: Recibes sangre ígnea.",
      :arma     => "+2 dados de fuego al ataque. Si el turno anterior causó heridas, atacará con dados negros. Si causó heridas con dados negros, drena mente.",
    } }),
    Gema.new({ :id => 42, :name => "rosa de cristal", :fits => {
      :cuello   => "+1 a la habilidad 'Dos Armas'",
      :cabeza   => "+2 esquivar.",
      :arma     => "5 movimiento: El arma puede realizar un único ataque extra al mismo objetivo",
    } }),
    Gema.new({ :id => 43, :name => "pendril", :fits => {
      :cuello   => "Puedes lanzar conjuros y arrojar armas desde tu espalda. 2/reto: Puedes desvelar dos salas del mapa. 1/reto: Puedes convocar 1d6 pieles verdes.",
      :cabeza   => "Durante la fase trepidante si no combates puedes percibir a todos los enemigos en sigilo. 1/reto: Puedes contrar 1d6 pieles verdes durante 2 turnos.",
      :arma     => "+1 potencia por cada potencia extra en magia de agua. +1 fuerza por cada maestría extra en magia de aire. Si estás bajo los efectos de un aura, puede golpear en diagonal.",
    } }),
    Gema.new({ :id => 44, :name => "zelfama", :fits => {
      :cuello   => "Zelfama, la hermana perdida de Mentor luchará junto a ti. (Es una maga con todos los hechizos de aire de nivel 3, invisible si no mueve.)",
      :cabeza   => "1/reto: Zelfama te susurra un secreto. +1 maestría de aire. +1 potencia de agua. Al sanar a un aliado, éste recupera 1 PM por cada daño que hayas sufrido.",
      :arma     => "El arma puede ser utilizada por magos (Vuela alrededor sin consumir una mano). +1 potencia en ataques en conjunto. Al fallar un ataque lanza bola de fuego. ",
    } }),
    Gema.new({ :id => 45, :name => "celestita", :fits => {
      :cuello   => "1/reto: Resucitas a un aliado muerto, devolviéndole a la vida con todas sus habilidades, mente y cuerpo. Si mueres sin consumir esta carga, renacerás como ángel guardián, y podrás resucitar en el templo a cambio de una misa.",
      :cabeza   => "+3 vs Tenebro. +2 potencia defensiva. Al lanzar una plegaria no dañina, la recuperas.",
      :arma     => "El arma puede ser utilizada por el clero. Si el portador está bendecido, brotarán alas de ángel: volará, +3 movimiento, +3 vs Miedo y + 1 de potencia.",
    } }),
    Gema.new({ :id => 46, :name => "piedra fénix", :fits => {
      :cuello   => "Al morir por un efecto de fuego resucitas con todo tu cuerpo y mente. Tus aliados y tú podéis conjurar fuego contra ti mismo para provocar este efecto.",
      :cabeza   => "Iluminas la sala (-1 sigilo de los enemigos). +1 potencia de hechizos de fuego. +1 fuerza al atacar enemigos a melé.",
      :arma     => "+2 dados de fuego. +1 de fuerza. Los dados nulos de fuego generan cargas fénix. 2 cargas fénix: +1 fuerza. 3 cargas fénix: +5 vs Calor. 4 cargas fénix: brtarán alas de fuego hasta el final del reto: volará, +3 movimiento, +2 vs Escarcha.",
    } }),
    Gema.new({ :id => 47, :name => "dragonita", :fits => {
      :cuello   => "+2 maestría a efectos de fuego. +3 potencia defensiva.",
      :cabeza   => "+1 potencia en hechizos de tierra por cada aliado herido cercano. Si compartes o renuncias al tesoro, sufrirás una maldición. Si estás maldito, +1 maestría a los hechizos de tierra.",
      :arma     => "+2 dados de fuego. Por cada daño crítico de fuego, +1 causar miedo dracónico. 2/reto: Aliento de dragón. 1/reto: Rayo dracónico.",
    } }),
    ## Gemas Insólitas
    Gema.new({ :id => 48, :name => "serpentina del dragón", :fits => {
      :armadura => "+2 vs peste",
    } }),
    Gema.new({ :id => 49, :name => "hierro antigravedad", :fits => {
      :espalda => "Al correr, el héroe vuela.",
    } }),
    Gema.new({ :id => 50, :name => "prisma de luz", :fits => {} }),
    Gema.new({ :id => 51, :name => "jacinto de sangre", :fits => {} }),
    Gema.new({ :id => 52, :name => "piedra de alma", :fits => {} }),  
    Gema.new({ :id => 53, :name => "felmar", :fits => {} }),
    Gema.new({ :id => 54, :name => "trigema", :fits => {} }), 
    Gema.new({ :id => 55, :name => "rubí encantado", :fits => {} }) 
  ]   
end

def gema id ; gemas[id] end
def gema_ranuras ; gemas.map{|r| r.fits.keys}.flatten.uniq end
