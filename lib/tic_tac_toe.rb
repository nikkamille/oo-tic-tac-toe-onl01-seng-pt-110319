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
  
  def move(index, token = "X")
    
  end
  
  def position_taken?(user_input)
    @board.find_index{|i| i != " "} 
  end
  
  def valid_move?
    
  end
  
  def turn 
    puts "Please enter 1-9:"
    user_input = gets
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