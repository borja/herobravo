# encoding: UTF-8
def sacerdotes
  [
    {
      :id           => 0,
      :name         => "plegaria santa",
      :description  => "sin definir",
      :type         => "única"
    },
    {
      :id           => 1,
      :name         => "aura de bienaventura",
      :description  => "sin definir",
      :type         => "pasiva"
    }
  ]
end

def sacerdote(id)
  sacerdotes[id]
end
