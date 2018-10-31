class TowersOfHanoi
  attr_accessor :board

  def initialize
    @board = [[3,2,1],[],[]]
  end

  def move(from_tower, to_tower)
    board[to_tower] << board[from_tower].pop
  end

  def valid_move?(from_tower, to_tower)
    return false if from_tower > 2 || from_tower < 0 || to_tower > 2 || to_tower < 0
    return true if board[to_tower].empty?
    return true if board[to_tower].last > board[from_tower].last
    return false if board[from_tower].empty? || (board[to_tower].last < board[from_tower].last)
  end

  def get_input
    begin
      puts "Please select which stack to move from and to where, e.g (1,2): "
      input = gets.chomp.split(",").map(&:to_i)
      from = input[0]
      to = input[1]
      raise ArgumentError if valid_move?(from,to) == false
    rescue ArgumentError
      puts "That was an invalid move, please try again!"
      retry
    end
    input
  end

  def render
  end
end
