# Caesar cypher challenge.
# Point is to create shortest encoder / decoder.
# Currently does not support spaces or special characters

def encode(message)
  char_array = [*'a'..'z'].rotate(-1)
  message.downcase!.chars.map! { |x| x = char_array[(char_array.index(x)+3)%26]}.join
end


puts encode('FOXY')

