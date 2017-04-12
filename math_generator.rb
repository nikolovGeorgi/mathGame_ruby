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




#   def generate_method
#     case @choice
#     when 1
#       'add'
#     when 2
#       'substract'
#     when 3
#       'multiply'
#     when 4
#       'divide'
#     end
#   end
# #---- # add player to generate_question
#   def generate_question
#     case @choice
#     when 'add'
#       "What does #{@a} plus #{@b} equal?"
#     when 'substract'
#       "What does #{@a} minus #{@b} equal?"
#     when 'multiply'
#       "What does #{@a} times #{@b} equal?"
#     when 'divide'
#       "What does #{@a} divided by #{@b} equal?"
#     end
#   end
# #---- # add player to generate_answer
#   def generate_answer?(a, b, input, choice)
#     case choice
#     when 'add'
#       result = a + b
#     when 'substract'
#       result = a - b
#     when 'multiply'
#       result = a * b
#     when 'divide'
#       result = a / b
#     end
#     input == result
#   end
# #----
#   def add(a, b)
#     a + b
#   end
# #----
#   def substract(a, b)
#     a - b
#   end
# #----
#   def multiply(a, b)
#     a * b
#   end
# #----
#   def divide(a, b)
#     a / b
#   end
# #----
# end
