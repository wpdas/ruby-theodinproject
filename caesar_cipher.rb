# Caesar Cipher
# A Caesar cipher is a type of substitution cipher in which each letter in the plaintext is replaced with the
# letter standing at a fixed number of positions down the alphabet.
# For example, with a left shift of 3, D would be replaced by A, E would become B, and so on.

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