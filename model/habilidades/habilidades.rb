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

# TODO Yamlize this data
def habilidad_base(personaje)
  case personaje
  when 'mago' then [
    Hab.new(name: 'Hechizar', description: 'Permite coger 3 sets de magia elemental al inicio del reto.')]
  when 'elfo' then [
    Hab.new(name: 'Hechizar', description: 'Permite coger 1 set de magia elemental al inicio del reto.'),
    Hab.new(name: 'Salto liviano', description: '+1 Saltar fosos')]
  when 'tiefling' then [
    Hab.new(name: 'Hechizar', description: 'Permite coger 3 hechizos entre las magias de fuego o sombras, al inicio del reto.'),
    Hab.new(name: 'Pacto demoníaco', description: '1PM: +1 dado azul de defensa hasta final del turno.')]
  when 'enano'    then [
    Hab.new(name: 'Desactivar trampas', description: '+1 desactivar trampas')]
  when 'bárbaro'  then [
    Hab.new(name: 'Furia', description: "1PM: +1 dado de ataque hasta final del turno. Además eres inmune a psicología.")]
  when 'ladrón'   then [
    Hab.new(name: 'Robar', description: "La tirada de tesoros se efectúa de forma independiente al grupo.")]
  when 'clérigo'  then [
    Hab.new(name: 'Rezar', description: '+6 plegarias sagradas al iniciar el Reto.')]
  end
end
