# encoding: UTF-8

# Tirada de dados
def dado_sigmar ; ['hammer','comet','plus','blank','eagle','eagle'][rand(6)] end
def dado_tesoro ; rand(6) +1 end

def tesoro(sigmar, dado1, dado2)
  valores = ['pifia','vacia','vacia','comida','perg','oro',"monstruo",'pot','trampa', "caja",'cofre']
  return send(valores[dado1+dado2-2],sigmar, dado1, dado2)
end

# Resultados según sigmar
def pifia sigmar, dado1, dado2 ; sigmar == 'eagle' ? 'pifia ligera' : 'pifia'         end
def vacia sigmar, dado1, dado2 ; sigmar == 'hammer' ? 'desconcentrado' : 'sala vacia' end

def comida(sigmar, dado1, dado2)
  case sigmar
    when 'eagle'  then 'comida : asado'
    when 'plus'   then 'comida : manzanas'
    when 'blank'  then 'comida : podrida'
    when 'hammer' then 'comida : agua'
    when 'comet'  then 'comida : sidra'
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
    when 'eagle'  then 'oro : 50'
    when 'plus'   then 'oro : 35'
    when 'blank'  then 'oro : 10'
    when 'hammer' then 'oro : 25'
    when 'comet'  then 'oro : 60'
  end
end

def monstruo(sigmar, dado1, dado2)
  case sigmar
    when 'eagle'  then 'monstruo errante lento'
    when 'plus'   then 'monstruo errante rapido'
    else 'monstruo errante'
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

def trampa(sigmar, dado1, dado2)
  case sigmar
    when 'eagle'  then 'trampa de flecha'
    when 'plus'   then 'trampa de foso'
    when 'blank'  then 'trampa de veneno'
    when 'hammer' then 'trampa de roca'
    when 'comet'  then 'trampa de hacha'
  end
end

def caja(sigmar, dado1, dado2)
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
    when 'eagle'  then gema(rand(1..41)).nombre + " + " + gema(rand(1..41)).nombre
    when 'plus'   then joya(rand(1..14)).nombre + " + " + joya(rand(1..14)).nombre
    when 'blank'  then runa(rand(1..12)).nombre + " + " + runa(rand(1..12)).nombre
    when 'hammer' then 'objeto'
    when 'comet'  then 'artefacto'
  end
end