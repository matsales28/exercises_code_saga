class Word
  RegexCounter =  -> (phrase, regex) { phrase.delete('').chars.count { |el| el.downcase.match(regex) } }

  def vowels_count(phrase)
    RegexCounter[phrase, /[aeiouyáàâãéèêíïóôõöú]/]
  end

  def consonants_count(phrase)
    RegexCounter[phrase, /[a-z&&[^aeiou]]/]
  end
end
