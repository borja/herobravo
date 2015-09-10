# encoding: UTF-8
def sacerdotes
  [
    {
      :id           => 0,
      :name         => "plegaria santa",
      :description  => "sin definir",
      :type         => "única",
      :nivel        => 2,
    },
    {
      :id           => 1,
      :name         => "aura de bienaventura",
      :description  => "sin definir",
      :type         => "pasiva",
      :nivel        => 2,
    }
  ]
end
def sacerdote id ; sacerdotes[id].merge({:char => 'sacerdote'}) end