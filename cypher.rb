def encode(message)
  message = message.downcase
  char_array = [*'a'..'z'].rotate(-1)
  message.chars.map! { |x| x = char_array[(char_array.index(x)+3)%26]}.join
end


puts encode('abcdewxyz')

