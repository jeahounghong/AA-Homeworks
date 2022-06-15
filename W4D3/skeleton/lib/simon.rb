require 'colorize'

class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @seq = []
    @game_over = false
    @COLORS = ["red", "blue", "yellow", "green"]
    @response_hash = {
      "R" => "red",
      "G" => "green",
      "B" => "blue",
      "Y" => "yellow"
    }
    @time_increment = 1
  end

  def play
    until @game_over 
      self.take_turn
    end
    self.game_over_message
    if self.reset_game
      self.play
    end
  end

  def take_turn
    self.add_random_color
    @sequence_length += 1
    self.show_sequence
    self.require_sequence
    if !@game_over
      system("clear")
      self.round_success_message
      sleep(2)
    end
  end

  def show_sequence
    @seq.each_with_index do |el,i|
      system("clear")
      case el
      when "red"
        puts "#{i+1}. #{el.upcase.red}"
      when "blue"
        puts "#{i+1}. #{el.upcase.blue}"
      when "yellow"
        puts "#{i+1}. #{el.upcase.yellow}"
      when "green"
        puts "#{i+1}. #{el.upcase.green}"
      end
      sleep(@time_increment)
    end
    @time_increment *= 9/10.0

  end

  def require_sequence
    system("clear")
    puts "Please respond with the sequence RBGY"
    answer = gets.chomp.upcase
    (0...sequence_length-1).each do |i|
      answer_i = answer[i]
      @game_over = true if answer_i.length != 1
      @game_over = true if @response_hash[answer_i.upcase] != @seq[i]
      break if @game_over
    end
  end

  def add_random_color
    seq << @COLORS.sample
  end

  def round_success_message
    puts "It'll get harder"
  end

  def game_over_message
    system("clear")
    puts "You suck!"
  end

  def reset_game
    @seq = []
    @game_over = false
    @sequence_length = 1
    puts "Do you want to play again? (Y/N)"
    answer = gets.chomp
    return answer.upcase == "Y"
  end
end

s = Simon.new
s.play