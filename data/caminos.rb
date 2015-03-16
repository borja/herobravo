def caminos
  {
	  "El Heredero"   => [
	    ["La carta"      , "Recibes una carta inesperada"],
      ["Los ancestros" , "Debes ayudar al fantasma de un antepasado"],
	  ],
	  "El Burgués"    => [],
	  "El Arconte"    => [
      ["algo", "algo mas"],
      ["algo2", "y mas..."]
    ],
	  "El Justiciero" => [
      ["algo", "algo mas"],
      ["algo2", "y mas..."]
    ],
	  "El Eremita"    => [
      ["algo", "algo mas"],
      ["algo2", "y mas..."]
    ],
	  "El Santo"      => [
      ["algo", "algo mas"],
      ["algo2", "y mas..."]
    ],
    "El Bardo"      => [
      ["algo", "algo mas"],
      ["algo2", "y mas..."]
    ],
    "El Oscuro"     => [
      ["La Piedra", "Descubres un pendril perdido y hablas con el señor oscuro al otro lado."],
      ["Susurros", "..."]
    ],
  }
end
def camino path ; caminos[path] end 