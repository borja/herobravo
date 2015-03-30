# encoding: UTF-8
def joyas
  [
    Joya.new({ :id => 0,  :name => "del toro",    :fits => {
      :bastón   => "+2 dados azules de ataque (potencia 2)",
      :daga     => "+1 efectos de sangrado",
      :arma     => "+1 ataque",
      :anillo   => "+1 punto de cuerpo",
      :colgante => "+1 movimiento (correr: +1 saltar fosos)",
      :escudo   => "Puede usar el escudo de base vs ataques conjuntos",
    } }),
    Joya.new({ :id => 1,  :name => "del caos",    :fits => { 
      :daga     => "Al arrojar y matar, se arroja sola automáticamente",
      :arma     => "+1 ataque (excepto demonios y caóticos)",
      :colgante => "+1 hechizo tenebro aleatorio",
      :armadura => "+1 vs tenebro",
    } }),
    Joya.new({ :id => 2,  :name => "multicolor",  :fits => { 
      :hacha    => "Hacha doble (4 calaveras): magia elemental aleatoria potencia:nivel",
      :metal    => "(4 calaveras): magia elemental aleatoria potencia:nivel",
      :anillo   => "Pergaminos elementales +1 efecto.",
    } }),
    Joya.new({ :id => 3,  :name => "simbionte",   :fits => {
      :hacha    => "(solo enano) +1 punto de cuerpo al matar",
      :cabeza   => "+2 puntos de cuerpo",
      :espada   => "+1 furia al recibir daños el turno anterior.",
      :lanza    => "+ 1 punto de mente al matar.",
    } }),
    Joya.new({ :id => 4,  :name => "de la fortuna", :fits => {
      :anillo   => "Los monstruos errantes pueden repetirse 1 vez",
      :colgante => "Las trampas de tesoro pueden repetirse 1 vez",
      :cabeza   => "Duplica el oro del tesoro",
      :armadura => "Triplica el oro del tesoro",
    } }),
    Joya.new({ :id => 5,  :name => "amorfa",        :fits => {
      :bastón   => "+ 3 resistencia al rayo",
      :daga     => "Desangradora y potencia +1",
      :arma     => "-1 ataque: Los ataques fallidos recuperan 1 hechizo.",
      :armadura => "-1 defensa: Las defensas fallidas recuperan 1 hechizo.",
    } }),
    Joya.new({ :id => 6,  :name => "antimagia",     :fits => {
      :todos    => "+1 resistencia vs magia",
      :cabeza   => "4+ resistencia vs magia",
      :arma     => "El objetivo queda silenciado si es dañado",
      :colgante => "1/reto: Puede repetir una tirada de defensa mágica",
    } }),
    Joya.new({ :id => 7,  :name => "del artesano",  :fits => {
      :hacha    => "+2 ranuras engarzables",
      :cabeza   => "(salvo enano): +2 Desactivar trampas",
      :anillo   => "+2 ranuras engarzables",
      :colgante => "+1 ranura engarzable, que añadiría el efecto en anillo",
    } }),
    Joya.new({ :id => 8,  :name => "aullante",      :fits => {
      :arma     => "El enemigo retrocede 1 casilla por daño sufrido",
      :escudo   => "El enemigo no puede conjuntar ataques > su potencia",
      :colgante => "(solo bárbaro) +1 duración de todos los gritos",
    } }),
    Joya.new({ :id => 9,  :name => "de la perfeccion",:fits => {
      :escudo   => "+2 dados azules de defensa",
      :daga     => "+ 2 potencia",
      :arma     => "+2 dados de ataque",
      :anillo   => "El personaje puede llevar +1 anillo",
    } }),
    Joya.new({ :id => 10, :name => "de la sangre",  :fits => {
      :espada   => "Triplica el daño (máximo 3 dados de ataque)",
      :hacha    => "Desangran + 1 potencia",
      :lanza    => "+2 potencia y desangran",
      :colgante => "(solo ladrón) ataques/espalda y hechizos desangran",
    } }),
    Joya.new({ :id => 11, :name => "de sigmar",     :fits => {
      :maza     => "(solo clérigo) + 2 ataque",
      :anillo   => "(solo clérigo)+1 plegaria por reto",
      :escudo   => "(solo clérigo) +2 defensa",
      :colgante => "1/reto: El siguiente hechizo es súmmum y chakra",
    } }),
    Joya.new({ :id => 12, :name => "cerebro congelado",  :fits => {
      :cintura  => "1/reto: puede ejecutar el hechizo Reposición Mental",
    } }),
    Joya.new({ :id => 13, :name => "demonio en tarro",   :fits => { } }),
    Joya.new({ :id => 14, :name => "del verano",         :fits => {
      :bastón   => "permite usar 3 magias del verano (si se usa 1, se desactivan las demás, salvo que sea gratuita)",
    } }),
    Joya.new({ :id => 15, :name => "del invierno",       :fits => {
      :bastón   => "permite usar 3 magias del invierno (si se usa 1, se desactivan las demás, salvo que sea gratuita)",
    } }),
    Joya.new({ :id => 16, :name => "del otoño",          :fits => {
      :bastón   => "permite usar 3 magias del otoño (si se usa 1, se desactivan las demás, salvo que sea gratuita)",
    } }),
    Joya.new({ :id => 17, :name => "de la primavera",    :fits => {
      :bastón   => "permite usar 3 magias de la primavera (si se usa 1, se desactivan las demás, salvo que sea gratuita)",
    } }),
    Joya.new({ :id => 18, :name => "atrapasueños élfico",:fits => { 
      :bastón   => "Permite armonizar el báculo de las estaciones.",  
    } }),
    Joya.new({ :id => 19, :name => "talismán guardabosques",:fits => { 
      :cabeza   => "+1PM al defender con éxito",  
    } }),
  ]
end

def joya id ; joyas[id] end
def joya_ranuras ; joyas.map{|r| r.fits.keys}.flatten.uniq end
