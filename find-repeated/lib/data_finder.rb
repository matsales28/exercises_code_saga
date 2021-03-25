class DataFinder
  def find_and_sum(list, a, b)
    result = 0
    grouped_values = list.map do |el|
      el.each_char.with_object(Hash.new(0)) { |letter, hash| hash[letter] += 1 }.values.uniq
    end
    grouped_values.each do |ary|
      result += 1 if ary.include?(a)
      result += 1 if ary.include?(b)
    end
    result
  end
end
