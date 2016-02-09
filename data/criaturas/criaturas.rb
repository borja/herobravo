# encoding: UTF-8
def criaturas # plural
  %w(bestias pielverdes nomuertos dragones elementales caóticos guardianes humanoides)
end

def criaturae # singular
  %w(bestia pielverde nomuerto dragon elemental caótico guardian humanoide)
end

# Define criatures using YML
criaturas.each do |criature|
  define_method(criature) do
   YAML::load_file(File.join(__dir__, "#{criature}.yml"))
  end
end

# Define a bestia(id) method.
criaturae.each do |cr, i|
  define_method(cr) do |id|
    send(criaturas[i])[id]
  end
end
