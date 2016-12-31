class GuessFun
	#create attr_reader for all variables you need to access outside of scope
	attr_reader :guesses, :word, :guessed_array, :underscore, :underscore_array
	#initialize everything that has to be done to the word and setup instance variables
	def initialize(word)
		@word = word.split("")
		@guesses = @word.length * 2
		@underscore_array = @word.map {|x| "_" }
		@underscore = @underscore_array.join(" ")
		@guessed_array = []
	end
	def guess_a_letter(letter)
		#Create a statement so that already guessed letters don't count against you
		if @guessed_array.include?(letter)
			p "You already tried that letter silly...."
			return
		end
		#create an extra empty array to replace the letters guessed if correctly guessed
		if @word.include?(letter)
			replace_array = @word.each_index.select{|n| @word[n] == letter}
			replace_array.reverse.each {|i| @underscore_array.delete_at(i)}
			replace_array.each {|i| underscore_array.insert(i, letter)}
			@underscore = @underscore_array.join(" ")
		else
			@underscore
		end
		#after guessing update guessed array and guess counter
		@guessed_array << letter
		@guesses = @guesses - 1
	end
end

#user console
puts "Please enter a word for your friend to guess!"
word_to_guess = gets.chomp
game = GuessFun.new(word_to_guess)
system "clear"

while !(game.guesses == 0 || game.underscore_array == game.word)
	p "You get #{game.guesses} guesses Good Luck!"
	p "Please try a letter"
	letter = gets.chomp.downcase
	game.guess_a_letter(letter)
	#print the underscore not the underscore_array
	p game.underscore
end

if game.guesses == 0 && game.underscore_array != game.word
	puts "The word was #{game.word.join.upcase} Better luck next time loser!"
else
	puts "I guess #{game.word.join.upcase} just wasn't good enough... you win..."
end







