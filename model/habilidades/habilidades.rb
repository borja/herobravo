pjs = %w(
  caminante brujo vengador hoplita beastslord bersérker
  hechicero invocador conjurador paladín clérigo sacerdote
  derviche arquero druida ladrón asesino nigromante
  matador falangista ingeniero
)

# Generic clase creator
pjs.each do |pj|
  define_method(pj + 's') do
    load_yaml("skills/#{pj}")
  end
  define_method(pj) do |id|
    send(pj + 's')[id].merge(char: pj)
  end
end

# Maestro de Armas
def maestrodearmas
  load_yaml('skills/maestrodearma')
end

def maestrodearma(id)
  maestrodearmas.find { |m| m['id'] == id }.merge('char' => 'maestrodearmas')
end

def fama(personaje)
  p load_yaml('salones')[personaje]
end
