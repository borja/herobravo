# DB Loader
def razas
  chars = load_yaml('personaje/razas')
  stats = load_yaml('personaje/stats')
  chars.merge(stats)
end
