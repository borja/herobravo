# YAML Loader
require 'yaml'

def load_yaml(path)
  YAML.load_file(File.join(__dir__, "../data/#{path}.yml"))
end
