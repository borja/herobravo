# encoding: UTF-8
def materiales
  [
    {
      :id   => 0,
      :name => "madeja de seda",
    },
    {
      :id   => 1,
      :name => "sangre de demonio",
    },
    {
      :id   => 2,
      :name => "piel",  
    }, 
    {
      :id   => 3,
      :name => "cenizas mágicas",
    },   
    {
      :id   => 4,
      :name => "cuero mágico",
    },
    {
      :id   => 5,
      :name => "madera",
    }
  ]
end
def material id ; materiales[id] end