# El módulo es el que contiene métodos para operaciones en ClaseA
module OperacionesA
  # Método para sumar los atributos @atri1 y @atri2
  def sumalos
    @atri1 + @atri2
  end

  # Método para restar los atributos @atri1 y @atri2
  def restalos
    @atri1 - @atri2
  end
end

# El módulo que contiene métodos para operaciones en ClaseB
module OperacionesB
  # Método para multiplicar los atributos @atri3 y @atri4
  def multiplicalos
    @atri3 * @atri4
  end

  # Método para dividir los atributos @atri3 y @atri4
  def dividelos
    @atri3 / @atri4
  end
end

# ClaseA que incluye el módulo OperacionesA, que son los métodos propios de la ClaseA
class ClaseA
  include OperacionesA

  # El método initialize define los atributos privados @atri1 y @atri2
  def initialize(atri1, atri2)
    @atri1 = atri1
    @atri2 = atri2
  end
  
  private

  # Métodos de acceso privados para los atributos @atri1 y @atri2
  attr_accessor :atri1, :atri2
end

# ClaseB que incluye el módulo OperacionesB, que son los métodos propios de la ClaseB, se utilizará para poder realizar laa herencia múltiplee
class ClaseB
  include OperacionesB

  # El método initialize define los atributos privados @atri3 y @atri4
  def initialize(atri3, atri4)
    @atri3 = atri3
    @atri4 = atri4
  end
  
  private

  # Métodos de acceso privados para los atributos @atri3 y @atri4
  attr_accessor :atri3, :atri4
end

# ClaseC que hereda de ClaseA y también incluye los métodos de ClaseB (simulando herencia múltiple)
class ClaseC < ClaseA
  include OperacionesB

  # El método initialize define los atributos de ClaseA y nuevos atributos @atri5 y @atri6
  def initialize(atri1, atri2, atri3, atri4, atri5, atri6)
    super(atri1, atri2)  # Llama al constructor de ClaseA
    @atri3 = atri3
    @atri4 = atri4
    @atri5 = atri5
    @atri6 = atri6
  end

  # Redefine el método sumalos para incluir todos los atributos de ClaseC
  def sumalos
    @atri1 + @atri2 + @atri5 + @atri6
  end

  # Redefine el método restalos para incluir todos los atributos de ClaseC
  def restalos
    @atri1 - @atri2 - @atri5 - @atri6
  end
  
  private

  # Métodos de acceso privados para los nuevos atributos @atri5 y @atri6
  attr_accessor :atri5, :atri6
end

# ClaseD que hereda de ClaseC
class ClaseD < ClaseC
  # El método initialize define los atributos de ClaseC y nuevos atributos @atri7 y @atri8
  def initialize(atri1, atri2, atri3, atri4, atri5, atri6, atri7, atri8)
    super(atri1, atri2, atri3, atri4, atri5, atri6)
    @atri7 = atri7
    @atri8 = atri8
  end

  # Método para sumar todos los atributos heredados y los propios de ClaseD
  def supersumalos
    @atri1 + @atri2 + @atri5 + @atri6 + @atri7 + @atri8
  end

  # Método para restar todos los atributos heredados y los propios de ClaseD
  def superrestalos
    @atri1 - @atri2 - @atri5 - @atri6 - @atri7 - @atri8
  end
  
  private

  # Métodos de acceso privados para los nuevos atributos @atri7 y @atri8
  attr_accessor :atri7, :atri8
end

# ClaseE que hereda de ClaseD
class ClaseE < ClaseD
  # El método initialize define los atributos de ClaseD y nuevos atributos @atri9 y @atri10
  def initialize(atri1, atri2, atri3, atri4, atri5, atri6, atri7, atri8, atri9, atri10)
    super(atri1, atri2, atri3, atri4, atri5, atri6, atri7, atri8)
    @atri9 = atri9
    @atri10 = atri10
  end

  # Redefine el método supersumalos para incluir todos los atributos de ClaseE
  def supersumalos
    @atri1 + @atri2 + @atri5 + @atri6 + @atri7 + @atri8 + @atri9 + @atri10
  end

  # Redefine el método superrestalos para incluir todos los atributos de ClaseE
  def superrestalos
    - @atri1 - @atri2 - @atri5 - @atri6 - @atri7 - @atri8 - @atri9 - @atri10
  end
  
  private

  # Métodos de acceso privados para los nuevos atributos @atri9 y @atri10
  attr_accessor :atri9, :atri10
end

# Método main para encapsular la lógica del programa y ejemplificar
def main
  # Crear una instancia de ClaseE con valores iniciales para todos los atributos
  e = ClaseE.new(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)

  # Llamar al método supersumalos y mostrar el resultado
  puts "Resultado de supersumalos: #{e.supersumalos}"  # Output: 48

  # Llamar al método superrestalos y mostrar el resultado
  puts "Resultado de superrestalos: #{e.superrestalos}"  # Output: -48
end

# Llamar al método main para ejecutar el programa
main