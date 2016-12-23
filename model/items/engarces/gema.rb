# Tipo de engarce basico
class Gema < Engarce
  def calidad
    gema_calidades.find { |g| (g['calibre'] - 1) == (id / 8) }
  end

  def precio_venta
    # Cost depends on calibre
    [10, 25, 50, 100, 250, 500, 50][calidad - 1] # TODO: Check this values
  end
end
