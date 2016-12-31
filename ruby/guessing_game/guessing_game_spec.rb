#One user can enter a word (or phrase, if you would like your game to support that), and another user attempts to guess the word.
#Guesses are limited, and the number of guesses available is related to the length of the word.
#Repeated guesses do not count against the user.
#The guessing player receives continual feedback on the current state of the word. So if the secret word is "unicorn", the user will start out seeing something like "_ _ _ _ _ _ _", which would become "_ _ _ c _ _ _" after the user enters a guess of "c".
#The user should get a congratulatory message if they win, and a taunting message if they lose.

#enter a word
#number of guesses = word.length * 2
#split word into letters
#an array for guessed letters
#guess letter if letter ==  letter already guessed count stays the same
#check to see if guessed letter is in the word
#p "______" "word length in underscores" with guessed letters inserted after every guess
#Message when they win or lose

require_relative 'guessing_game'

describe Guess_fun do 
	let(:new_game) {Guess_fun.new("word")}
	it "checks how many letters are in word and times by 2" do
		expect(new_game.guesses).to eq 8
	end

	it "Splits the letters of word into an array" do
		expect(new_game.word[3]).to eq "d"
	end

	it "Prints underscores for every letter in the array" do
		expect(new_game.underscore).to eq "_ _ _ _"
	end

	it "Subtracts a guessed number from guesses" do
		new_game.guess_a_letter("w")
		expect(new_game.guesses).to eq 7
	end

	it "Adds any guessed letter to guess list" do
		new_game.guess_a_letter("w")
		expect(new_game.guessed_array).to eq ["w"]
	end

	it "Deletes any underscore of a guessed letter and replaces it with the letter" do
		new_game.guess_a_letter("w")
		expect(new_game.underscore).to eq "w _ _ _"
	end

	it "Takes any letter already guessed and doesn't count it" do
		new_game.guess_a_letter("w")
		new_game.guess_a_letter("w")
		expect(new_game.guesses).to eq 7
	end
end
