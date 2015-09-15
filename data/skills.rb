# encoding: UTF-8

# Comunes
require './data/skills/maestrodearmas'

pjs = ["caminante","brujo","vengador",
       "hoplita","beastslord","bersérker",
       "hechicero","invocador","conjurador",
       "paladín","clérigo","sacerdote",
       "derviche","arquero","druida",
       "ladrón","asesino","nigromante",
       "matador","falangista","ingeniero"]

pjs.each do |pj|
  require './data/skills/' + pj
end

# Generic clase creator
pjs.each do |pj| 
  define_method(pj) do |id|
     send(pj+'s')[id].merge({:char => pj})
  end
end