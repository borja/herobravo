# encoding: UTF-8
def fields
  [
    %w(cabeza hombros muñecas cintura entrepierna),
    %w(espalda pechera manos hebilla pies tatuajes),
    %w(cuello argolla pendientes cadena broche tobillos)
  ]
end

def resistencias
  YAML::load_file(File.join(__dir__, "../data/resistencias.yml"))
end
