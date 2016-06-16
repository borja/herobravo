def retos
  load_yaml('retos').map { |r| Reto.new(r) }
end

def reto(id)
  retos[id]
end
