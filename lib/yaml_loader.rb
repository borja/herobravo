# YAML Loader
require 'yaml'

# Main fake DB loading method
def load_yaml(path) # Path must be in /data
  YAML.load_file(File.join(__dir__, "../data/#{path}.yml"))
end # YAML keys will be allways strings (never symbols)
