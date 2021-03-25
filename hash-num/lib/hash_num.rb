class HashNum
  def find_sequence(num_set, list)
    list.map do |word|
      array = []
      word.each_char do |letter|
        num_set.each_pair do |key,value|
          if value.include?(letter) && array.last.to_i < key.to_s.to_i
            array << key.to_s; break
          end
        end
      end
      (word.length == array.length) ? array.join : nil
    end
  end
end
