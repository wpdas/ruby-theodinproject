# Caesar Cipher

require "debug"  

def caesar_cipher(string, shift)
  alphabet = ('a'..'z').to_a.join('');
  new_string = string.chars.map do |char|

    # returns the original character if it's not in the alphabet
    next char if !alphabet.include?(char.downcase)

    char_index = alphabet.index(char.downcase)
    is_uppercase = char == char.upcase

    # module: to wrap around the alphabet
    new_char_index = (char_index + shift) % alphabet.length
    new_char = alphabet[new_char_index]

    if is_uppercase
      new_char = new_char.upcase
    end

    new_char
  end

  new_string.join("")
  
end

# Alternative implementation of the Caesar cipher: less lines of code
def caesar_cipher_v2(string, shift)
  alphabet = ('a'..'z').to_a.join('');
  cipher = alphabet.slice(shift..) + alphabet.slice(0..shift - 1)

  # Graphic representation of the alphabet and cipher
  top_bottom_line_size = (alphabet.length * 2) + 1
  puts "Original string: #{string}"
  puts "Shift: #{shift} \n"
  puts "          #{Array.new(top_bottom_line_size, '_').join('')}"
  puts "Alphabet: |#{alphabet.split('').join('|')}|"
  puts "Cipher:   |#{cipher.split('').join('|')}|"
  puts "          #{Array.new(top_bottom_line_size, '¯').join('')}"
  
  new_string = string.chars.map do |char|
    next char if !alphabet.include?(char.downcase)
    char_index = alphabet.index(char.downcase)
    is_uppercase = char == char.upcase

    # return the new character in the correct case
    is_uppercase ? cipher[char_index].upcase : cipher[char_index]
  end

  new_string.join("")
  
end

result = caesar_cipher_v2("What a string!", 5)
puts "Result: #{result}" 

# Original string: What a string!
# Shift: 5 
#           _____________________________________________________
# Alphabet: |a|b|c|d|e|f|g|h|i|j|k|l|m|n|o|p|q|r|s|t|u|v|w|x|y|z|
# Cipher:   |f|g|h|i|j|k|l|m|n|o|p|q|r|s|t|u|v|w|x|y|z|a|b|c|d|e|
#           ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
# Result: Bmfy f xywnsl!