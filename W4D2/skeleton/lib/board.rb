class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @player1 = name1
    @player2 = name2
    @cups = Array.new(14) {Array.new}
    @cups.each_with_index do |el,i|
      if i != 6 && i != 13 
        @cups[i] = [:stone, :stone, :stone, :stone]
      end
    end
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each

  end

  def valid_move?(start_pos)
    if start_pos > 13
      raise "Invalid starting cup"
    end
    if start_pos == 6 || start_pos == 13
      raise 'Starting cup is empty'
    end
    true
  end

  def make_move(start_pos, current_player_name)
    if valid_move?(start_pos)
      temp = @cups[start_pos]
      @cups[start_pos] = 0
    end
  end

  def next_turn(ending_cup_idx)
    # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
  end

  def winner
  end
end
