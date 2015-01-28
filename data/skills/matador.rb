# encoding: UTF-8
def matadors
  [
    {
      :id           => 0,
      :name         => "ataque combinado",
      :description  => "el matador usa sus dos armas simultáneamente en un ataque conjunto.",
      :type         => "única"
    },
    {
      :id           => 1,
      :name         => "dos armas",
      :description  => "el matador puede llevar un hacha de mano en la mano torpe",
      :type         => "pasiva"
    }
  ]
end

def matador(id)
  matadors[id]
end
