def casesar_cipher(string = "TeSt", shift = 5)
ciphered = ""
shift = shift % 25
string = string.split("")
string.each do |letter|
  letter = letter.ord
  if letter > 90 && letter < 122
  letter += shift
    if letter > 122
      letter -= 26
    end
  elsif letter > 65 && letter < 91
    letter += shift
      if letter > 90
      letter -= 26
      end
  end
   print (letter.chr)
   ciphered += letter.chr
end
return ciphered
end

casesar_cipher "What a string!", 5
