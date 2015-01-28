# encoding: UTF-8
def descripcion  ;["Jugador", "personaje", "nivel", "reputación"]                         end
def lore         ;["rostro", "héroe", "ciudad", "raza", "pareja"]                         end
def disciplinas  ;["id", "icono", "tipo", "nombre", "descripción", "nivel", "requisitos"] end
def engarces     ;["gemas","joyas","runas"]                                               end
def habs         ;["icono", "tipo", "nombre", "descripción"]                              end
def fields       ;{ 1 => ["cabeza","hombros","muñecas","cintura","pies"],
                    2 => ["cuello","espalda","pechera","manos","hebilla","tobillos"],
                    3 => ["argolla","pendientes","tatuajes","cadena","broche","entrepierna"],
                  } end
def resistencias
 [
   { :nombre      => "psiónica",
     :description => "Es la resistencia arcana principal, contra las maldiciones y los trucos mentales."   
   },
   { :nombre      => "calor",
     :description => "Resistencia contra el fuego, los poderes infernales y las llamas."   
   },  
   { :nombre      => "escarcha",
     :description => "Resistencia contra el frío, la congelación y el hielo."   
   },
   { :nombre      => "miedo",
     :description => "Resistencia contra el miedo, evita perder el control del personaje."   
   },
   { :nombre      => "peste",
     :description => "Resistencia contra venenos, enfermedades, ácidos y toxinas."   
   },
   { :nombre      => "rayo",
     :description => "Resistencia contra los relámpagos, tormentas y muchos sortilegios de aire."   
   },      
   { :nombre      => "tenebro",
     :description => "La resistencia contra la nigromancia, la magia de sangre, el caos, la magia oscura y lo impío."
   }
 ]  
end

def leyes
  [{ :nombre => "hechizos", :method => "spell"  },
   { :nombre => "shadows",  :method => "sombra" },  
   { :nombre => "blood",    :method => "sangre" },]
end
