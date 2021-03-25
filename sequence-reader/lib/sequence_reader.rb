require 'byebug'
class SequenceReader
  def read(sequence, multiplier)
   
    organizer = ""

    multiplier.times do
      sequence.scan(/((.)\2*)/).map do |number, value|
        byebug
        organizer += number.length.to_s + value
      end
      sequence = organizer
      organizer = ""
    end
    sequence
    
  end
end