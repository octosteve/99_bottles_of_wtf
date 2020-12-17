def container(bottle_number)
  if bottle_number == 1
    'bottle'
  else
    'bottles'
  end
end

def verse(number)
  case number
  when 2
    "#{number} bottles of beer on the wall, " +
      "#{number} bottles of beer.\n" +
      'Take one down and pass it around, ' +
      "#{number - 1} #{container(number - 1)} of beer on the wall.\n"
  else
    "#{number} bottles of beer on the wall, " +
      "#{number} bottles of beer.\n" +
      'Take one down and pass it around, ' +
      "#{number - 1} #{container(number - 1)} of beer on the wall.\n"
  end
end
