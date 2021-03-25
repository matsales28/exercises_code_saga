class StringExpander
  def expand(instructions)
    multiplier = 1
    instructions
      .gsub('x', '')
      .scan(/\d+|[A-Za-z]+/)
      .each_with_object('') do |el, memo|
        if character?(el)
          memo << el * multiplier
          multiplier = 1
        else
          multiplier *= el.to_i
        end
      end
  end

  def character?(el)
    el.to_i.zero? && el != '0'
  end
end
