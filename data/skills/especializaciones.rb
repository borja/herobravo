# encoding: UTF-8
def especializacions
  [
    {
      :id          => 0,
      :name        => "especialista",
      :description => "El hechicero se especializa en 1 elemento, obteniendo +1POT en los hechizos de ese elemento. A cambio, tendrá una penalización en 2 elementos de -1 POT en sus hechizos.",
      :type        => "pasiva",
      :coste       => 100,
    },
     {
      :id          => 1,
      :name        => "diablura fuego de ira",
      :description => "Si el hechizo fuego de ira falla a la hora de hacer daño, se recupera.",
      :type        => "pasiva",
      :coste       => 100,
    },
    {
      :id          => 2,
      :name        => "diablura valentía",
      :description => "El objetivo al que se le aplique el hechizo valentía, será inmune al estado de Miedo de ciertos enemigos.",
      :type        => "pasiva",
      :coste       => 100,
    },
     {
      :id          => 3,
      :name        => "diablura agua que cura",
      :description => "El hechizo no sólo cura PC, sino también PM.",
      :type        => "pasiva",
      :coste       => 100,
    },
     
  ]
end

def especializacion(id)
  especializacions[id]
end
