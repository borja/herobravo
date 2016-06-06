# Tipo de engarce basico
class Gema < Engarce
  def calidad
    gema_calidades[id / 8]
  end
end