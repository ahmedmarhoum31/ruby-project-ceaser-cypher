def shift_char(char, shift_number)
  char_ascii_code = char.ord
  unless char_ascii_code.between?(97,122) || char_ascii_code.between?(48,57)
    return char
  end
  shifted_character_ascii_code = char_ascii_code - shift_number
  if shifted_character_ascii_code < 97
    how_much_lower = 97 - shifted_character_ascii_code
    shifted_character_ascii_code = 122 - how_much_lower + 1  
  elsif shifted_character_ascii_code < 48
    how_much_lower = 48 - shifted_character_ascii_code
    shifted_character_ascii_code = 57 - how_much_lower + 1  
  end
  shifted_character_ascii_code.chr
end

def caesar_cypher(string, shift_number)
  string_chars_array = string.downcase.split("")
  string_chars_array.map! {|char| shift_char(char, shift_number)}
  string_chars_array.join("")
end

print "enter the message you wanna encrypt: "
user_message = gets.chomp
print "enter the number of shifts you wanna use: "
user_shift_number = gets.chomp
user_message = caesar_cypher(user_message, user_shift_number.to_i)
puts "\nyour encrypted message is #{user_message}"