# encoding: UTF-8
pjs = %w(
  caminante brujo vengador hoplita beastslord bersérker
  hechicero invocador conjurador paladín clérigo sacerdote
  derviche arquero druida ladrón asesino nigromante
  matador falangista ingeniero maestrodearma
)

# YAML database requestor
def nigromantes
  YAML::load_file(File.join(__dir__, 'skills/nigromante.yml'))
end

def paladíns
  YAML::load_file(File.join(__dir__, 'skills/paladín.yml'))
end

# Generic clase creator
pjs.each do |pj|
  define_method(pj) do |id|
    send(pj + 's')[id].merge(char: pj)
  end
end
