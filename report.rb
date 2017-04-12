class Report
  def game_start
    puts "\nWelcome to Epic Math Battles!"
    puts
  end
#-----
  def input_player_name(player_number)
    print "Enter Player #{player_number}'s name: "
  end
#-----
  def gg_hf
    puts "\nGood Game & Have Fun !"
    puts
  end
#-----
  def player_turn(player_name)
    print "#{player_name}: "
  end
#-----
  def success
    choice = rand(1..5)

    case choice
    when 1
      puts "\nGreat Job! You guess it right!!".green
    when 2
      puts "\nHoly! You are awesome!!!".green
    when 3
      puts "\nOh Man.. Right Again!".green
    when 4
      puts "\nFantastic, you should try for the math olympics!!".green
    when 5
      puts "\nYou are doing alright so far!".green
    end

  end
#-----
  def fails
    choice = rand(1..5)

    case choice
    when 1
      puts "\nWRONG!!!".magenta
    when 2
      puts "\nHoly! Go back to High School!".magenta
    when 3
      puts "\nOh Man.. You just don't know math..".magenta
    when 4
      puts "\nYou should go back to flipping burgers...".magenta
    when 5
      puts "\nThat's pathetic!".magenta
    end
  end
#-----
  def score_keeping_for_player(player)
    puts "#{player.name}: #{player.correct_answers} Correct Answers #{player.life} Remaining Lives"
  end
#-----
  def current_score
    puts
    puts "The score so far: ".cyan
  end
#-----
  def final_score
    puts
    puts "The final score is: ".cyan.bold
  end
#-----
  def winner(player)
    puts
    puts "THE WINNER IS: #{player.name}".bold
    puts "--------------------------------------"
  end
#-----
  def game_over
    puts "--------------------------------------"
    puts "GAME OVER!".red.bold
  end
#-----
end
