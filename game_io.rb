class GameIO
  # Method to ask a question to the player
  def self.ask_question(player_name, num1, num2)
    puts "#{player_name}: What does #{num1} plus #{num2} equal?"
    print "> "
    gets.chomp.to_i
  end

  # Method to print a correct answer message
  def self.print_correct_answer(player_name)
    puts "#{player_name}: YES! You are correct."
  end

  # Method to print an incorrect answer message
  def self.print_incorrect_answer(player_name)
    puts "#{player_name}: Seriously? No!"
  end

  # Method to print the current score
  def self.print_score(player1_lives, player2_lives)
    puts "P1: #{player1_lives}/3 vs P2: #{player2_lives}/3"
  end

  # Method to print the winner of the game
  def self.print_winner(player_name, player_lives)
    puts "#{player_name} wins with a score of #{player_lives}/3"
  end

    # Method to print the game over message
  def self.print_game_over
    puts "----- GAME OVER -----"
    puts "Good bye!"
  end
end