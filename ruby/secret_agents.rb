def encrypt(strings)
   
   puts strings[0].next + strings[1].next + strings[2].next
 
end

encrypt("abc")


def decrypt(strings)
  string = "abcdefghijklmnopqrstuvwxyz"
  puts strings[0] + strings[-1] + strings[-2]
end
  
decrypt("bcd")