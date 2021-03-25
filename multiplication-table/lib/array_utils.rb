class ArrayUtils
  class << self
    def multiplos(qtd, multiplo)
      [].tap do |_|
        qtd.times do |index|
          _ << multiplo * (index + 1)
        end
      end
    end

    def tabuada(value)
      Array.new(value).tap do |array|
        value.times do |value_index|
          array[value_index] = multiplos(10, value_index + 1)
        end
      end
    end
  end
end
