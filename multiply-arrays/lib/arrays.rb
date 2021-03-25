class Arrays
  def self.multiplica_antecessor_predecessor(array)
    result = []
    array.each_with_index do |ary, index|
      first, middle, last = array[index - 1], array[index], array[index + 1]
      if array.first == ary
        result << middle * last
        next
      end
      if array.last == ary
        result << middle * first
        next
      end
      result << first * last
    end
    result
  end
end
