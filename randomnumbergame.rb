$the_rand = rand(100)
$winner_declared = false

def computer_turn 
	computer_rand = rand(100)

	puts "Computer's guess: #{computer_rand}\n"

	if computer_rand != $the_rand
		puts "Computer guessed incorrectly.\n"

	else
		puts "Computer guessed correctly! You lose.\n"
		$winner_declared = true

	end

end

def your_turn
	print "Enter a number: "
	your_guess = gets.to_i #Ensure this does not happen to strings

	if !your_guess.integer?
		puts "Please put in a number.\n"

	elsif your_guess > 100 or your_guess < 0
		puts "Please put in a number between 0 and 100! Try again.\n"

	elsif your_guess < $the_rand
		puts "You guessed too low!\n"

	elsif your_guess > $the_rand
		puts "You guessed too high!\n"

	elsif your_guess = $the_rand
		puts "You guessed correctly!\n"
		$winner_declared = true

	end

end


until($winner_declared)
	your_turn

	if(!$winner_declared)
		computer_turn
	end
end