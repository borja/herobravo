# encoding: UTF-8
def runas
  [
    Runa.new({ :id => 0,  :name => "tir"  , :fits => {
      :armadura => "+1 dado azul de defensa, escudo blanco: potencia +1",
      :cabeza   => "+1 movimiento",
      :arma     => "+1 potencia, se considera ígnea",
      :anillo   => "Las tiradas de envenenamiento pueden repetirse +1 vez.",
      :colgante => "Los venenos solo pueden durar 1 turno",
      :escudo   => "+1 dado azul de defensa, escudo blanco: potencia +1"
    } }),
    Runa.new({ :id => 1,  :name => "oth"  , :fits => {
      :armadura => "+1 dado de ataque si el enemigo defiende con más.",
      :anillo   => "1/reto: Ignora una trampa foso/roca caída.",
      :hacha    => "+1 dado morado de ataque (calavera única: potencia +1)"
    } }),
    Runa.new({ :id => 2,  :name => "feth" , :fits => {
      :armadura => "+2 vs calor (3 calaveras al defender: Niebla)",
      :arma     => "Maldición: -2 a la resistencia mágica del objetivo",
      :muñecas  => "+1 dado negro de defensa, escudo blanco: indemne"
    } }),
    Runa.new({ :id => 3,  :name => "syr"  , :fits => {
      :arma     => "+1 dado de potencia 2",
      :colgante => "+1 resistencia mágica general",
      :anillo   => "Inmune al hechizo tempestad",
      :bastón   => "+1 magia aleatoria de aire, nivel 2"
    } }),
    Runa.new({ :id => 4,  :name => "bek"  , :fits => {
      :cabeza   => "+1 dado de defensa, potencia 3",
      :espada   => "Evenena, 2 escudos negros: dormir",
      :hacha    => "Eléctrica, 2 escudos negros: obtienes ráfaga.",
      :daga     => "+2 de potencia en los ataques por la espalda",
    } }),
    Runa.new({ :id => 5,  :name => "yom"  , :fits => {
      :cabeza   => "Durante la defensa vs hechizos añade +1d6 a la Mente.",
      :arma     => "Eléctrica",
      :espalda  => "Se tiran dados morados al saltar fosos.",
      :anillo   => "El fuego de Ira contra no-muertos dobla el daño",
    } }),  
    Runa.new({ :id => 6,  :name => "sinq" , :fits => {
      :espada   => "Resistencia +3 vs magia tenebro.",
      :hacha    => "+ 2 potencia vs Fimires y Momias.",
      :anillo   => "Al matar un no-muerto con un hechizo, recupera 1PM",
      :colgante	=> "Al matar un orco con un hechizo, recupera 1PC",
    } }),  
    Runa.new({ :id => 7,  :name => "rwon" , :fits => {
      :hacha	  => "Regresa al ser arrojada y su daño es congeladora",
      :cabeza  	=> "El daño por frío puede reducir mente en su lugar.",
      :anillo	  => "Los hechizos tipo bola no colisionan en aliados",
      :daga	    => "Al dañar por la espalda, la víctima entra en locura.",
    } }),  
    Runa.new({ :id => 8,  :name => "phyth", :fits => {
      :armadura => "Los esqueletos reciben un daño al causar un daño.",
      :lanza  	=> "Tira un dado verde adicional al atacar.",
      :arco     => "Al fallar un disparo, recupera un hechizo",
    } }),
    Runa.new({ :id => 9,  :name => "gor"  , :fits => {
      :arma   	=> "Puede usarse en una sola mano.",
      :torso    => "Recibir daño, aumenta +1 potencia defensiva 1 turno.",
      :escudo	  => "Tira un dado azul extra de defensa.",
      :ballesta	=> "Eléctrica",
    } }),
    Runa.new({ :id => 10, :name => "un"   , :fits => {
      :daga     => "+ 1 potencia",
      :espada	  => "+ 1 dado verde de ataque",
      :cintura	=> "+ 2 al número de pociones y pergaminos portables.",
      :espalda  => "1 vez / foso: Saltar satisfactoriamente recupera 1PC.",
    } }),  
    Runa.new({ :id => 11, :name => "gar"  , :fits => {
      :anillo 	=> "Duplica el oro de las tiradas de tesoro",
      :botas	  => "+ 1 movimiento",
      :colgante	=> "Correr: Suma 1d6 extra al movimiento.",
    } }),  
  ]
end

def runa id ; runas[id] end
def runa_ranuras ; runas.map{|r| r.fits.keys}.flatten.uniq end