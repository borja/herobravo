# encoding: UTF-8
def nigromantes
  [
    {
      :id           => 0,
      :name         => "levantar muertos",
      :description  => "sin definir",
      :type         => "única"
    },
    {
      :id           => 1,
      :name         => "explotar cadáver",
      :description  => "sin definir",
      :type         => "pasiva"
    }
  ]
end

def nigromante(id)
  nigromantes[id]
end
