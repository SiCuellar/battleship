class Attack

  def display_board(board, owner)
      puts "      #{owner.upcase}"
      puts ". 1 2 3 4  \n
            A #{board[0][0].state} #{board[0][1].state} #{board[0][2].state} #{board[0][3].state} \n
            B #{board[1][0].state} #{board[1][1].state} #{board[1][2].state} #{board[1][3].state} \n
            C #{board[2][0].state} #{board[2][1].state} #{board[2][2].state} #{board[2][3].state} \n
            D #{board[3][0].state} #{board[3][1].state} #{board[3][2].state} #{board[3][3].state} \n "
  end
end
