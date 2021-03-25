class Arrays
  Converter = -> (array, symbol, multiply_num) do
    filtered_array = array.filter(&symbol)
    [filtered_array, filtered_array.map { |num| num * multiply_num }]
  end 
  def self.converte_impares_por(lista, numero)
    Converter[lista, :odd?, numero]
  end

  def self.converte_pares_por(lista, numero)
    Converter[lista, :even?, numero]
  end
end
