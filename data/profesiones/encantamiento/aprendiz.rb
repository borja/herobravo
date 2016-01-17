# encoding: UTF-8

def encantamiento_aprendizajes
  [
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
    }
  ]
end