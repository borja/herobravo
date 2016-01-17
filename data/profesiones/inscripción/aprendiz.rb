# encoding: UTF-8

def inscripción_aprendizajes
  [
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
    }
  ]
end