# DB Loader
def razas
  chars = load_yaml('personaje/razas')
  stats = load_yaml('personaje/stats')
  chars.merge(stats)
end

def total_razas
  # pj.last.last => elohim:   [6, 4, 7, "racial"]   # "racial"
  razas.count { |pj| pj.last.last == 'racial' } + 1 # "Humano"
end
