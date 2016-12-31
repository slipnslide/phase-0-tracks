class GuessFun
	attr_reader :guesses, :word, :guessed_array, :underscore, :underscore_array
	def initialize(word)
		@word = word.split("")
		@guesses = word.length * 2
		@underscore_array = @word.map { |e| "_" }
		@underscore = @underscore_array.join(" ")
		@guessed_array = []
	end

	def guess_a_letter(letter)
		if @guessed_array.include?(letter)
			p "You already tried that letter silly...."
			return
		end

		if @word.include?(letter)
			replace_array = @word.each_index.select{|n| @word[n] == letter}
			replace_array.reverse.each {|i| @underscore_array.delete_at(i)}
			replace_array.each {|i| underscore_array.insert(i, letter)}
			@underscore = @underscore_array.join(" ")
		else
			@underscore
		end
		@guessed_array << letter
		@guesses = @guesses - 1
	end
end
