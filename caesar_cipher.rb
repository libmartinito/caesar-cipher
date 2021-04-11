def caesar_cipher(string, shift_factor)
  lowercase_letters = "abcdefghijklmnopqrstuvwxyz"
  uppercase_letters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"

  i = 0

  while i <= string.length - 1 do
    if uppercase_letters.include?(string[i]) 
      shift_loc = uppercase_letters.index(string[i]) + shift_factor
      shift_loc -= uppercase_letters.length if shift_loc > uppercase_letters.length
      string[i] = uppercase_letters[shift_loc]
    elsif lowercase_letters.include?(string[i])
      shift_loc = lowercase_letters.index(string[i]) + shift_factor
      shift_loc -= lowercase_letters.length if shift_loc > lowercase_letters.length
      string[i] = lowercase_letters[shift_loc]
    else string[i] = string[i]
    end
    i += 1
  end
  string
end

puts caesar_cipher("What a string!", 5)