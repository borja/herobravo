# encoding: UTF-8

pjs = ["caminante","brujo","vengador",
       "hoplita","beastslord","bersérker",
       "hechicero","invocador","conjurador",
       "paladín","clérigo","sacerdote",
       "derviche","arquero","druida",
       "ladrón","asesino","nigromante",
       "matador","falangista","ingeniero",
       "maestrodearma"
     ]

# Generic clase creator
pjs.each do |pj| 
  require './data/skills/' + pj
  define_method(pj) do |id|
     send(pj+'s')[id].merge({:char => pj})
  end
end