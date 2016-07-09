# Bisuteria variada
class Miscelanea < Item
  def name
    miscelanea(id)['name']
  end

  def fits
    miscelanea(id)['fits']
  end

  def precio
    miscelanea(id)['precio']
  end
end
