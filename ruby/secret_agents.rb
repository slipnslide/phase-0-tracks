def encrypt(string)
 counter = 0
 while counter < string.length
   if string[counter] == 'z'
     string[counter] = 'a'
     
   elsif string[counter] == " "
     string[counter] = string[counter]
       
   else
     string[counter] = string[counter].next
   end
     counter = counter + 1
 end
   return string
end

def decrypt(string)
 alphabet = "abcdefghijklmnopqrstuvwxyz"
 counter = 0
 while counter < string.length

   if string[counter] == " "
     string[counter] == string[counter]
   else
     
   string[counter] = alphabet[(alphabet.index(string[counter]) - 1)]

   end

   counter = counter + 1

 end
 return string
end

puts 'Would you like to encrypt or decrypt?'
answer = gets.chomp

if answer == 'encrypt'
 puts 'please give me the password to encrypt.'
 password_en = gets.chomp
 result = encrypt(password_en)
 puts "Your encrypted password is is #{result}"
elsif answer == 'decrypt'
 puts "please give me the password to decrypt."
 password_de = gets.chomp
 result = decrypt(password_de)
 puts "Your decrypted password  is #{result}"
else
 puts 'wrong input try again'
end
#decrypt(encrypt("swordfish"))
=begin
this bit of code works because of the order of operations. what is inside of the () gets evaluated first, after that the only thing left is the encrypted string and the decrypt which is why it works.
=end