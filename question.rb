class Question
  attr_reader :num1, :num2

  # Initialize a question with two random numbers
  def initialize
    @num1 = rand(1...21)
    @num2 = rand(1...21)
  end

  # Method to get the sum of the two numbers
  def get_sum
    @num1 + @num2
  end
end