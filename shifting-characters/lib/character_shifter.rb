class CharacterShifter
  RightOperation = -> (collection, index) do
    collection[index].prepend(collection[index][-1])
    collection[index][-1] = ''
  end

  LeftOperation = -> (collection, index) do
    collection[index] << (collection[index][0])
    collection[index][0] = ''
  end

  def execute(instructions, collection)
    instructions.split(' ').each { |el| execute_single_instruction(el, collection )}

    collection
  end
  private

  def execute_single_instruction(instruction, collection)
    return change_values(collection, instruction[0].to_i, instruction[3].to_i, instruction[5..].to_i) if instruction[1..2] == '<>'

    operation = (instruction[1..2] == ':>' ? RightOperation : LeftOperation).curry[collection]
    deslocate(instruction[0].to_i, instruction[3..].to_i, operation)
  end

  def change_values(collection, from, to, element_index)
    collection[from][element_index], collection[to][element_index] = collection[to][element_index], collection[from][element_index]
  end

  def deslocate(index, multiplicator, operation)
    multiplicator.times { operation[index] }
  end
end
