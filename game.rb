class Game
  attr_accessor :player1, :player2, :active_player

  # Initialize the game with two players and set the active player
  def initialize
    @player1 = Player.new('Player 1')
    @player2 = Player.new('Player 2')
    @active_player = @player1
  end

  # Method to start the game loop
  def start_game
    loop do
      @active_player.answer_question
      GameIO.print_score(player1.lives, player2.lives)
      switch_active_player
      break if game_over?
      puts "----- NEW TURN -----"
    end
    print_winner
    GameIO.print_game_over
    exit(0)
  end

  # Method to switch the active player
  def switch_active_player
    @active_player = (@active_player == @player1) ? @player2 : @player1
  end

  # Method to check if the game is over
  def game_over?
    player1.lives == 0 || player2.lives == 0
  end

  # Method to print the winner of the game
  def print_winner
    if player1.lives == 0
      GameIO.print_winner("Player 2", player2.lives)
    else
      GameIO.print_winner("Player 1", player1.lives)
    end
  end
end