# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

 "iNvEsTiGaTiOn".swapcase 
# => “InVeStIgAtIoN”

 "zom".insert(1, "o")
 #=> “zoom”

 "enhance".center(16)
 #=> "    enhance    "

 "Stop! You’re under arrest!".upcase
#=> "STOP! YOU’RE UNDER ARREST!"

 "the usual".insert(-1, " suspects")
#=> "the usual suspects"

" suspects".prepend("the usual")
# => "the usual suspects"

 "The case of the disappearing last letter".chop
 #=> "The case of the disappearing last lette"

"The mystery of the missing first letter".delete "T"
#=> "he mystery of the missing first letter"

 "Elementary,    my   dear        Watson!".squeeze(" ")
# => "Elementary, my dear Watson!"

 "z".bytes.join
 #=> 122 


 # .bytes Returns an array of bytes in str. This is a shorthand for str.each_byte.to_a
# .join allows us to convert the element of the array to a string and since there is no defined string it uses an empty one to print the data

# (What is the significance of the number 122 in relation to the character z?)
#according to the ASCII code "American Standard Code for Information Interchange z = 122 if you hold alt and press 122 you get a lowercase z"

 "How many times does the letter 'a' appear in this string?".count "a"
# => 4