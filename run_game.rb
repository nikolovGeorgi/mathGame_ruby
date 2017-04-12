require 'colorize'
require_relative 'player'
require_relative 'math_generator'
require_relative 'report'

# Instancing classes
r = Report.new

# setting game rules
@turn = 1
@game_running = true;

r.game_start
r.input_player_name(1)
@user_name = gets.chomp
player1 = Player.new(@user_name)
player1.name = player1.name.colorize(:blue)

r.input_player_name(2)
@user_name = gets.chomp
player2 = Player.new(@user_name)
player2.name = player2.name.colorize(:red)

r.gg_hf

while @game_running
  question = Math_generator.new

  case @turn
  when 1
    r.player_turn(player1.name)
  when 2
    r.player_turn(player2.name)
  end

  print question.generate_question
  @input = gets.chomp.to_i

  if @turn == 1 && question.check_answer?(@input)
    r.success
    player1.get_point
    @turn += 1
  elsif @turn == 1 && !question.check_answer?(@input)
    r.fails
    player1.decrease_life
    @turn += 1
  elsif @turn == 2 && question.check_answer?(@input)
    r.success
    player2.get_point
    @turn -= 1
  elsif @turn == 2 && !question.check_answer?(@input)
    r.fails
    player2.decrease_life
    @turn -= 1
  end

  r.current_score
  r.score_keeping_for_player(player1)
  r.score_keeping_for_player(player2)

  if player1.life <= 0 || player2.life <= 0
    r.game_over
    r.final_score
    r.score_keeping_for_player(player1)
    r.score_keeping_for_player(player2)
    if player1.life <= 0
      r.winner(player2)
    elsif player2.life <= 0
      r.winner(player1)
    end
    @game_running = false
  end
end
