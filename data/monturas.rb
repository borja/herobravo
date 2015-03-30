# encoding: UTF-8
def monturas
  [
    { :id        => 0,
      :name      => "caballo",
      :distancia => "3",
      :bono      => "bono",
    },
    { :id        => 1,
      :name      => "caballo de guerra",
      :distancia => "4",
      :bono      => "reputación +1",
    },
    { :id        => 2,
      :name      => "barco",
      :distancia => "6",
      :bono      => "Permite surcar los mares.",
    }
  ]
end
def montura id ; monturas[id] end