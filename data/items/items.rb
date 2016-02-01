# encoding: UTF-8

# Items Data Base
require './data/items/miscelaneas'
require './data/items/enchants'
require './data/items/engarces/gemas'
require './data/items/engarces/joyas'
require './data/items/engarces/runas'
require './data/items/engarces/tiers'
require './data/items/utiles/piezas'
require './data/items/utiles/pergaminos'
require './data/items/utiles/pociones'
require './data/items/utiles/materiales'
require './data/items/armas'
require './data/items/armaduras'
require './data/items/protecciones'
require './data/items/abalorios'
require './data/items/tarot'
require './data/items/espadaroja'

def calcular_coste(p)
  p "Recibo : #{p}"
  coste = 0
  p 'El coste comienza como 0'

  # Coste de los engarces (joyas y runas = 4)
  valor_calibre = [5, 10, 25, 50, 100, 250, 500]
  eng = p[:engarces].split(',').sort.reverse
  eng.each_with_index do |e, i|
    if (e.to_i - i) >= 0 # Avoid negative index values
      p " * Coste de la gema nº#{i}: #{valor_calibre[e.to_i - i]}"
      coste += valor_calibre[e.to_i - i]
    else
      p " * La gema de valor #{e}, ha sido descartada"
    end
  end
  p "El coste de las gemas sin reputación #{coste}"
  # Factor de Repu
  factor_reputacion = 0.9**p[:repu].to_i
  coste *= factor_reputacion
  coste.round
end
