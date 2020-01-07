class TicTacToe
  
  def initialize(board = nil)
    @board = board || Array.new(9, " ")
  end  
  
  WIN_COMBINATIONS= [
    [0,1,2],
    [3,4,5],
    [6,7,8],
    [0,3,6],
    [1,4,7],
    [2,5,8],
    [0,4,8],
    [2,4,6]
  ]
  
  def display_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end
  
  def input_to_index(input)
    input.to_i-1
  end  
  
  def move(index, player_token = "X")
    @board[index] = player_token
  end
  
  def position_taken?(index)
    @board[index] == "X" || @board[index] == "O" 
  end
  
  def valid_move?(index)
    # @board[index] == " " - passed the test but not sure if this is really the right way.
    index.between?(0, 9) && !position_taken?(index)
  end
  
  def turn
    puts "Please enter 1-9:"
    index = input_to_index(gets.chomp)
    
    if valid_move?(index)
      move(index, current_player)
      display_board
    else
      turn
    end
  end
  
  def turn_count
    @board.count{|token| token == "X" || token == "O"}
  end
  
  def current_player
    turn_count % 2 == 0 ? "X" : "O"
  end
  
  def won?
    @board == WIN_COMBINATIONS
  end
  
  def full?
    @board.all?{|token| token == "X" || token == "O"}
  end
  
  def draw?
    full?
  end
  
  def over?
    
  end
  
  def winner
    
  end
  
end