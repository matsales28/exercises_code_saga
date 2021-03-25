class Chars
  def unique_quantity(text)
    text.split(' ')
        .map { |el| el.chars.uniq.size }
        .sum
  end
end
