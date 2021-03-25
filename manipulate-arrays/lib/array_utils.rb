class ArrayUtils
  def self.compara(lista1, lista2)
    lista1.sort == lista2.sort
  end

  def self.soma(array)
    array.sum
  end

  def self.combinar(nums, letras)
    [].tap { |ary| nums.each { |num| letras.each { |l| ary << [num, l] } } }
  end

  def self.divisiveis(num1, num2)
    [].tap do |result|
      result << (1..50).filter { |el| (el % num1).zero? && (el % num2).zero? }
      result << (1..50).filter { |el| (el % num1).zero? && !(el % num2).zero? }
      result << (1..50).filter { |el| !(el % num1).zero? && (el % num2).zero? }
    end
  end
end
