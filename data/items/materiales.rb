# encoding: UTF-8
def materiales
  [
    Material.new({
      :id          => 0,
      :name        => "hebilla",
      :descritpion => "hebilla"
    }),
    Material.new({
      :id          => 1,
      :name        => "anillo",
      :descritpion => "anillo",
    }),
    Material.new({
      :id          => 2,
      :name        => "collar",  
      :descritpion => "cuello", 
    }), 
    Material.new({
      :id          => 3,
      :name        => "pendiente",
      :descritpion => "pendientes",
    }),   
    Material.new({
      :id          => 4,
      :name        => "argolla",
      :descritpion => "argolla",
    }),
  ]
end
def material id ; materiales[id] end