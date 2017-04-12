require 'colorize'
require_relative 'player'
require_relative 'math_generator'

@turn = 1
@game_running = true;
puts "Welcome to Math Generator!"

print "Enter Player 1's name: "
@user_name = gets.chomp
player1 = Player.new(@user_name)
player1.name = player1.name.colorize(:blue)


print "Enter Player 2's name: "
@user_name = gets.chomp
player2 = Player.new(@user_name)
player2.name = player2.name.colorize(:red)


puts "\nGood Game & Have Fun!\n"

while @game_running
  question = Math_generator.new

  case @turn
  when 1
    print "#{player1.name}: "
  when 2
    print "#{player2.name}: "
  end

  print question.generate_question
  @input = gets.chomp.to_i

  if @turn == 1 && question.check_answer?(@input)
    puts "Good Job! You got it right!".colorize(:purple)
    player1.get_point
    @turn += 1
  elsif @turn == 1 && !question.check_answer?(@input)
    puts "Wrong!".colorize(:black)
    player1.decrease_life
    @turn += 1
  elsif @turn == 2 && question.check_answer?(@input)
    puts "Good Job! You got it right!".colorize(:black)
    player2.get_point
    @turn -= 1
  elsif @turn == 2 && !question.check_answer?(@input)
    puts "Wrong!".colorize(:black)
    player2.decrease_life
    @turn -= 1
  end

  puts
  puts "The score so far:
  #{player1.name}: #{player1.correct_answers} Correct Answers #{player1.life} Remaining Lives
  #{player2.name}: #{player2.correct_answers} Correct Answers #{player2.life} Remaining Lives"
  puts

  if player1.life <= 0 || player2.life <= 0
    puts "Game OVER."
    if player1.life <= 0
      puts "The winner is #{player2.name}"
    elsif player2.life <= 0
      puts "The winner is #{player1.name}"
    end
    puts "The final score was:
    #{player1.name}: #{player1.correct_answers} Correct Answers #{player1.life} Remaining Lives
    #{player2.name}: #{player2.correct_answers} Correct Answers #{player2.life} Remaining Lives"
    @game_running = false
  end


  @game_running = true
end
