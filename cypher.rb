# Caesar cypher challenge.
# Point is to create shortest encoder / decoder.
# 2 lines, although second isn't very clear at all.


def encode(message)
  char_array = [*'a'..'z'].rotate(-1)
  message.downcase!.chars.map! { |x|  char_array.include?(x) ? x = char_array[(char_array.index(x)+3)%26] : x }.join
end



puts encode2('ANY phrase AT*ALL!')

