# encoding: UTF-8
def caminantes
  [
    {
      :id           => 0,
      :name         => "golpe sombrío",
      :description  => "A cambio de 1 PS, realizas una trapera a un enemigo a melé",
      :type         => "activa"
    },
    {
      :id           => 1,
      :name         => "sendero oscuro",
      :description  => "A cambio de 7 de movimiento, ganas 1 PS",
      :type         => "activa"
    },
    {
      :id           => 2,
      :name         => "recorrer la umbra",
      :description  => "Acambio de 1 PS, ganas +7 movimiento",
      :type         => "activa"
    }
  ]
end

def caminante(id)
  caminantes[id]
end
