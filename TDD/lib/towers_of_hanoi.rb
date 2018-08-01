class Towers
  attr_accessor :board

  def initialize
    @board = [[3,2,1],[],[]]
  end

  def move(start_pos, end_pos)
    if start_pos < 0 || start_pos > 2 || end_pos < 0 || end_pos > 2
      raise InvalidMove
    elsif board[start_pos].empty?
      raise InvalidMove
    elsif !board[end_pos].empty? && (board[start_pos].last > board[end_pos].last)
      raise InvalidMove
    else
      board[end_pos] << board[start_pos].pop
    end
  end

  def won?
    board[2] == [3,2,1]
  end

end

class InvalidMove < ArgumentError
end
