# Clase para gestionar las profesiones y sus grados.
# TODO necesita refactor segun la nueva forma de organizar los datos
class Profesion < Hash
  attr_accessor :id, :name, :aprendiz, :artesano, :maestro

  def initialize(args)
    args.each do |k, v|
      instance_variable_set("@#{k}".to_sym, v) unless v.nil?
    end
  end

  def img_path
    "'../../images/profesiones/#{name}.png'"
  end

  def aprendizajes
    profesion(id)['aprendiz']
  end

  def artesanias
    profesion(id)['artesano']
  end

  def maestrias
    profesion(id)['maestro']
  end
  
  def imped
    %w(clérigo bárbaro elfo mago enano 
    tiefling rakshasa ladrón elohim)[id]
  end
  
  def why
    case imped
    when 'clérigo'  then 'Las artes Oscuras de la alquimia son heréticas'
    when 'bárbaro'  then 'Los bárbaros son analfabetos'
    when 'elfo'     then 'El cadáver de una bestia debe ser respetado'
    when 'mago'     then 'La mejor táctica suele ser quemarlo todo'
    when 'enano'    then 'Los encantamientos son deshonorables para la guerra'
    when 'tiefling' then 'Prefieren alejarse de la plata, en la medida lo posible'
    when 'rakshasa' then 'La madera es un material escaso en los lejanos desiertos del león'
    when 'ladrón'   then 'Se niegan a hacer horas extra, y tienen un código de honor.'
    when 'elohim'   then 'Según sus preceptos de fe, las aves son libres de toda servidumbre'
    end
  end
  
end
