# encoding: UTF-8
def ladróns
  [
    {
      :id           => 0,
      :name         => "robar",
      :description  => "sin definir",
      :type         => "única"
    },
    {
      :id           => 1,
      :name         => "latrocinio",
      :description  => "sin definir",
      :type         => "pasiva"
    }
  ]
end
def ladrón id ; ladróns[id] end