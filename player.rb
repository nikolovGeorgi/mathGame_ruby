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
