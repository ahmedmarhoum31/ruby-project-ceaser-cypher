def shift_char(char, shift_number)
  shifted_character_ascii_code = char.ord - shift_number
  if shifted_character_ascii_code < 97
        how_much_lower = 97 - shifted_character_ascii_code
        shifted_character_ascii_code = 122 - how_much_lower + 1  
  end  
  shifted_character_ascii_code.chr
end