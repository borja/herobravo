# This method takes number of files in path
def total_adivinanzas
  path = './views/items/espadaroja/adivinanzas/*'
  Dir[path].length
end
