class StringUtils
  def wavefy(string)
    string.chars.map.with_index do |char, index|
      if index % 2 == 0 || index == 0
        char.downcase
      else 
        char.upcase 
      end
    end.join('')
  end
end
