# encoding: UTF-8

# Tirada de dados
def dado_sigmar ; ['hammer','comet','plus','blank','eagle','eagle'][rand(6)] end
def dado_tesoro ; rand(6) +1 end

def tesoro(sigmar, dado1, dado2)
  valores = ['pifia','vacia','maldición','trampa','monstruo','oro',"perg",'pot','comida', "alijo",'cofre']
  return send(valores[dado1+dado2-2],sigmar, dado1, dado2)
end

# Resultados según sigmar
def pifia sigmar, dado1, dado2 # 2 
  if sigmar == 'eagle'
    "Tropiezas y pierdes 1PC. A pesar de tu torpeza, te levantas disimuladamente..."
  else
    "Tropiezas y pierdes 1PC forma patética." 
  end        
end

def vacia sigmar, dado1, dado2 # 3
  if sigmar == 'hammer'
    "La sala está vacía pero aún se pueden buscar tesoros" 
  else
    "La sala está vacía y no se podrá rebuscar más."
  end 
end

def maldición sigmar, dado1, dado2 # 4
  doble = dado1 == dado2 
  case sigmar
    when 'eagle'  then "Maldición: #{ doble ? 'Legañas: Tu siguiente tirada de ataque causará daños a la miniatura más cercana' : 'Hirsutismo: -1 Reputación salvo enanos' } "
    when 'plus'   then "Maldición: #{ doble ? 'Indispuesto: Tu siguiente hechizo o tirada de defensa fallará' : 'Alopecia: -1 Reputación si eres enano o mujer.' } "
    when 'blank'  then "Maldición: #{ doble ? 'Patán: Tu siguiente tirada de tesoros tirará un dado menos' : 'Yuyu: En un momento dado, el MB puede hacer repetir 1d6.' } "
    when 'hammer' then "Maldición: #{ doble ? 'Masoquismo: Golpéate sin armas con cada 1 que saques hasta el final del reto' : 'Alopecia: -1 Reputación si eres enano o mujer.' } "
    when 'comet'  then "Maldición: #{ doble ? 'Mirado por un tuerto: El oro que obtengas en adelante, es falso.' : 'Infortunio: El MB podrá hacer repetir una tirada cualquiera.' } "
  end
end

def trampa(sigmar, dado1, dado2) #5
  case sigmar
    when 'eagle'  then 'trampa de flecha'
    when 'plus'   then 'trampa de foso'
    when 'blank'  then 'trampa de veneno'
    when 'hammer' then 'trampa de roca'
    when 'comet'  then 'trampa de hacha'
  end
end

def monstruo(sigmar, dado1, dado2)
  case sigmar
    when 'eagle'  then 'monstruo errante lento'
    when 'plus'   then 'monstruo errante rápido'
    else 'monstruo errante'
  end
end

def perg(sigmar, dado1, dado2)
  case sigmar
    when 'eagle'  then 'pergamino: doble'
    when 'plus'   then 'pergamino: documentos'
    when 'blank'  then 'pergamino: blanco'
    when 'hammer' then 'pergamino: basico'
    when 'comet'  then 'pergamino: arcano'
  end
end

def oro(sigmar, dado1, dado2)
  case sigmar
    when 'eagle'  then '50 piezas de oro.'
    when 'plus'   then '35 piezas de oro.'
    when 'blank'  then '10 piezas de oro.'
    when 'hammer' then '25 piezas de oro.'
    when 'comet'  then '60 piezas de oro.'
  end
end

def pot(sigmar, dado1, dado2)
  case sigmar
    when 'eagle'  then "pocion de curacion"
    when 'plus'   then "pocion de resistencia"
    when 'blank'  then "pocion de fuerza"
    when 'hammer' then "pocion de velocidad"
    when 'comet'  then "pocion de heroes"
  end
end

def comida sigmar, dado1, dado2 # 10
  case sigmar
    when 'eagle'  then 'comida : asado'
    when 'plus'   then 'comida : manzanas'
    when 'blank'  then 'comida : podrida'
    when 'hammer' then 'comida : agua'
    when 'comet'  then 'comida : sidra'
  end
end

def alijo(sigmar, dado1, dado2)
  case sigmar
    when 'eagle'  then 'gema: ' + gema(rand(1..41)).name
    when 'plus'   then 'runa: ' + joya(rand(1..12)).name
    when 'blank'  then 'gema: estropeada'
    when 'hammer' then 'gema: ' + gema(rand(1..41)).name
    when 'comet'  then 'joya: ' + joya(rand(1..14)).name
  end
end

def cofre(sigmar, dado1, dado2)
  case sigmar
    when 'eagle'  then gema(rand(1..41)).name + " + " + gema(rand(1..41)).name
    when 'plus'   then joya(rand(1..14)).name + " + " + joya(rand(1..14)).name
    when 'blank'  then runa(rand(1..12)).name + " + " + runa(rand(1..12)).name
    when 'hammer' then 'objeto'
    when 'comet'  then 'artefacto'
  end
end