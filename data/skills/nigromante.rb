# encoding: UTF-8
def nigromantes
  [
    {
      :id           => 0,
      :name         => "levantar muertos",
      :description  => "2 PM: Invoca a un esquelo para que luche bajo tu mando.",
      :type         => "Activa",
      :nivel        => 1
    },
    {
      :id           => 1,
      :name         => "explotar cadáver",
      :description  => "1PM: Explota un cadáver en la sala o pasillo, causando 1DC psiónicos a su alrededor.",
      :type         => "Reactiva",
      :nivel        => 1
    },
    {
      :id           => 2,
      :name         => "Cenizas fúnebres",
      :description  => "Añade 2 hechizos adicionales de sombras al iniciar el reto.",
      :type         => "Pasiva",
      :nivel        => 1
    }
  ]
end

def nigromante id ; nigromantes[id] end
