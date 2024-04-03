class Player
  attr_accessor :name, :lives

  # Constructor to initialize a player with a name and 3 lives
  def initialize(name)
    @name = name
    @lives = 3
  end

  # Method for a player to answer a question
  def answer_question
    new_question = Question.new
    answer = GameIO.ask_question(name, new_question.num1, new_question.num2)
    if correct_answer?(new_question, answer)
      GameIO.print_correct_answer(name)
    else 
      GameIO.print_incorrect_answer(name)
      decrease_lives
    end
  end
  
  # Method to check if the player's answer is correct
  def correct_answer?(question, answer)
    answer == question.get_sum
  end

  # Method to decrease the player's lives if the answer is incorrect
  def decrease_lives
    @lives -= 1
  end
end