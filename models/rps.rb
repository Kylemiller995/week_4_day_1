class Rps

  def initialize(move1, move2)
    @first_move = move1
    @second_move = move2
  end


  def play
    if @first_move == @second_move
      return 'draw'
    elsif @first_move == 'rock' && @second_move != 'paper'
      return 'rock wins'
    elsif @first_move == 'paper' && @second_move != 'scissors'
      return 'paper wins'
    elsif @first_move == 'scissors' && @second_move != 'rock'
      return 'scissors wins'
    else
      return "#{@second_move} wins"
    end
  end



end
