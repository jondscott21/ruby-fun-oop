def guess_number (guess)
  number = 25
  if guess < number
    puts 'You guessed too low.'
  elsif guess > number
    puts 'You guessed too high.'
  else
    puts 'You guessed right!'
  end
end

guess_number(26)
guess_number(24)
guess_number(25)
