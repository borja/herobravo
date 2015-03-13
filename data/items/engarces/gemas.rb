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
 
    Gema.new({ :id => 8,  :name => "almandino", :fits => {} }),
    Gema.new({ :id => 9,  :name => "heliotropo", :fits => {} }),
    Gema.new({ :id => 10, :name => "turquesa", :fits => {} }),
    Gema.new({ :id => 11, :name => "lapislázuli", :fits => {
      :hombros  => "2 escudos negros al defender: magia de agua nivel 1 aleatoria",
    } }),
    Gema.new({ :id => 12, :name => "espinela", :fits => {} }),
    Gema.new({ :id => 13, :name => "hessonita", :fits => {
      :anillo   => "+2 PM",
    } }),
    Gema.new({ :id => 14, :name => "malaquita", :fits => {} }),
    Gema.new({ :id => 15, :name => "obsidiana", :fits => {} }),
 
    Gema.new({ :id => 16, :name => "jade", :fits => {} }),
    Gema.new({ :id => 17, :name => "aguamarina", :fits => {
      :pies   => "2 escudos blancos -> 1 genio",
      :arma   => "+1 dado de escarcha",
    } }),
    Gema.new({ :id => 18, :name => "ámbar", :fits => {} }),
    Gema.new({ :id => 19, :name => "piropo", :fits => {} }),
    Gema.new({ :id => 20, :name => "olivino", :fits => {} }),
    Gema.new({ :id => 21, :name => "perla", :fits => {
      :cabeza => "5/reto: El ataque se considera bendito."
    } }),
    Gema.new({ :id => 22, :name => "jaspe", :fits => {} }),
    Gema.new({ :id => 23, :name => "coral", :fits => {} }),
 
    Gema.new({ :id => 24, :name => "amatista", :fits => {
      :muñecas  => "Golpes inflingidos pueden ser profanos",
    } }),
    Gema.new({ :id => 25, :name => "esmeralda", :fits => {
      :arma     => "Añade un dado de peste al ataque.",
      :cadena   => " +1 magia élfica",
      :espalda  => "+2 vs peste",
      :anillo   => "+2 vs peste"
    } }),
    Gema.new({ :id => 26, :name => "zafiro", :fits => {
      :espalda  => "+2 vs escarcha",
      :cabeza   => "+1 PM",
      :arma     => "+1 dado de escarcha",
      :hombros  => "+1 PM",
      :pies     => "+1 vs calor, +1 vs escarcha",
    } }),
    Gema.new({ :id => 27, :name => "topacio", :fits => {
      :espalda  => "+2 vs rayo",
      :cabeza   => "+10 oro del tesoro",
      :arma     => "+1 dado eléctrico",
    } }),
    Gema.new({ :id => 28, :name => "rubí", :fits => {
      :pies     => "+1 PC y +1 PM",
    } }),
    Gema.new({ :id => 29, :name => "diamante", :fits => {
      :armadura => "+2 Protección",
      :cuello   => "1/reto: cura corporal",
      :cadena   => "+ 1 potencia defensiva",
    } }),
    Gema.new({ :id => 30, :name => "jacinto", :fits => {
      :cabeza   => "+2 vs calor",
    } }),
    Gema.new({ :id => 31, :name => "ágata", :fits => {} }),
 
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
 
    Gema.new({ :id => 40, :name => "perla negra", :fits => {} }),
    Gema.new({ :id => 41, :name => "infernalita", :fits => {} }),
    Gema.new({ :id => 42, :name => "rosa de cristal", :fits => {} }),
    Gema.new({ :id => 43, :name => "pendril", :fits => {} }),
    Gema.new({ :id => 44, :name => "zelfama", :fits => {} }),
    Gema.new({ :id => 45, :name => "celestita", :fits => {} }),
    Gema.new({ :id => 46, :name => "piedra fénix", :fits => {} }),
    Gema.new({ :id => 47, :name => "dragonita", :fits => {} }),

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
