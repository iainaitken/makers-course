class Board
  def initialize
    @squares = ["   ","   ","   "]
  end

  def display
    puts @squares
  end

  def place(row, column, symbol)
    @squares[row][column] = symbol
  end

end
