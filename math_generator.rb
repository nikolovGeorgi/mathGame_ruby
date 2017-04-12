class Math_generator
  attr_reader :answer
#----
  def initialize()
    @a = random_int(1, 20)
    @b = random_int(1, 20)
    @choice = rand(1..3)

    case @choice
    when 1
      @answer = @a + @b
      @operator = '+'
    when 2
      @answer = @a - @b
      @operator = '-'
    when 3
      @answer = @a * @b
      @operator = '*'
    end
  end
#----
  def random_int(min, max)
    rand(max - min) + min
  end
#----
  def generate_question
    "What is #{@a} #{@operator} #{@b}? "
  end
#----
  def check_answer?(input)
    input == @answer
  end
#----
end
