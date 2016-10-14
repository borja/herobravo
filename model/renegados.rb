# encoding: UTF-8

def renegados
  total_renegados = Dir['./data/renegados/*'].length
  [*0..(total_renegados - 1)].map do |i|
    r = load_yaml("/renegados/#{i}")
    r['nivel'] = 1 unless r['nivel']
    r['ciudad'] = 'Revenge' unless r['ciudad']
    r['id'] = i
    Renegado.new(r)
  end
end

def renegado(id)
  renegados[id]
end
