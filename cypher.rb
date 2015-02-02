# Caesar cypher challenge.
# Point is to create shortest encoder / decoder.
# 2 lines, although second isn't very clear at all.
# The rotate is unnecessary but helps human understanding of A = 1, B = 2 etc.
# # # # # # # # # # # # # # # # # # # #
# Ughh, downcase! returns nil if the string is already downcased.. why would it do that??


def encode(message)
  char_array = [*'a'..'z'].rotate(-1)
  message.downcase.chars.map! { |x|  char_array.include?(x) ? x = char_array[(char_array.index(x)+3)%26] : x }.join
end

def decode(message)
  char_array = [*'a'..'z'].rotate(-1)
  message.downcase.chars.map! { |x| char_array.include?(x) ? x = char_array[(char_array.index(x)-3)%26] : x }.join
end




myString = encode('ANY phrase AT*ALL!')

puts myString
puts decode(myString)