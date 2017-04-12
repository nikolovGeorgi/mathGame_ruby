class Player
  attr_accessor :name, :life, :correct_answers
#-----
  def initialize(name, life=3)
    @name = name
    @life = life
    @correct_answers = 0
  end
#-----
  def get_point
    @correct_answers += 1
  end
#-----
  def decrease_life
    @life -= 1
  end
#-----
end
# def initialize(name, player_number)
#   @name = name
#   # @damage = damage
#   @player_number = player_number
#   @life = 3
# end
# #-----
#   def attack(target)
#     if !(can_attack?(target))
#       do_damage target
#     end
#   end
# #-----
#   def game_turns
#     while @life > 0
#       player_turn(1)
#       break if lost?
#       player_turn(2)
#     end
#   end
# #-----
#   def decrease_lifes(target)
#     @life -= 1
#   end
# #-----
#   def lost?
#     @life <= 0
#   end
# #-----
#   def can_attack?(target)
#     !(target.lost? Player) && !(target.lost?)
#   end
# #-----
#   def get_player_name
#     p "Player 1's name is: "
#   end
# #-----
#   def player_turn(target)
#
#   end
# #-----
# end
