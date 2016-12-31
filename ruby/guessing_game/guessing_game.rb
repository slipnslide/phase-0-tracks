class GuessFun
	attr_reader :guesses, :word, :guessed_array, :underscore, :underscore_array
	def initialize(word)
		@word = word.split("")
		@guesses = word.length * 2
		@underscore_array = @word.map { |e| "_" }
		@underscore = @underscore_array.join(" ")
		@guessed_array = []
	end



end
