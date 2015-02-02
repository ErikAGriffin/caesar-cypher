# Caesar cypher challenge.
# Point is to create shortest encoder / decoder.
# 2 lines, although second isn't very clear at all.
# The rotate is unnecessary but helps human understanding of A = 1, B = 2 etc.
# Also available  is singe encoder/decoder that takes a string and a boolean indicating ifEncoding
# # # # # # # # # # # # # # # # # # # #


def encode(message)
  char_array = [*'a'..'z'].rotate(-1)
  message.downcase.chars.map! { |x|  char_array.include?(x) ? x = char_array[(char_array.index(x)+3)%26] : x }.join
end

def decode(message)
  char_array = [*'a'..'z'].rotate(-1)
  message.downcase.chars.map! { |x| char_array.include?(x) ? x = char_array[(char_array.index(x)-3)%26] : x }.join
end

def coder(message,isEncoding)
  isEncoding ? z = 3 : z = -3
  char_array = [*'a'..'z'].rotate(-1)
  message.downcase.chars.map! { |x| char_array.include?(x) ? x = char_array[(char_array.index(x)+z)%26] : x }.join
end



myString = encode('ANY phrase AT*ALL!')

puts myString
puts decode(myString)

puts myString = coder('My message',true)
puts coder(myString,false)