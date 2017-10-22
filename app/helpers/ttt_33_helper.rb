module Ttt33Helper
  def emptyIndexes(board)
    empty_arr = []
    board.each_with_index do |val, index|
      if val != $aiPlayer && val != $huPlayer
        empty_arr << index
      end
    end

    return empty_arr
  end

  # All win scenarios
  def winning(board, player)
   if (board[0] == player && board[1] == player && board[2] == player) ||
      (board[3] == player && board[4] == player && board[5] == player) ||
      (board[6] == player && board[7] == player && board[8] == player) ||
      (board[0] == player && board[3] == player && board[6] == player) ||
      (board[1] == player && board[4] == player && board[7] == player) ||
      (board[2] == player && board[5] == player && board[8] == player) ||
      (board[0] == player && board[4] == player && board[8] == player) ||
      (board[2] == player && board[4] == player && board[6] == player)
      return true
   else
     return false
   end
  end

  def minimax(newBoard, player)
    availSpots = emptyIndexes(newBoard)
    temp = {}
    if winning(newBoard, $huPlayer)
      temp["score"] = -10
      return temp
    elsif winning(newBoard, $aiPlayer)
      temp["score"] = 10
      return temp
    elsif availSpots.length == 0
      temp["score"] = 0
      return temp
    end

    moves = []
    availSpots.length.times do |i|
      move = {}
      move["index"] = newBoard[availSpots[i]]
      newBoard[availSpots[i]] = player

      if player == $aiPlayer
        result = minimax(newBoard, $huPlayer)
        move["score"] = result["score"]
      else
        result = minimax(newBoard, $aiPlayer)
        move["score"] = result["score"]
      end

      newBoard[availSpots[i]] = move["index"]
      moves << move
    end

    bestMove = 0
    if player == $aiPlayer
      bestScore = - 10000
      moves.length.times do |i|
        if moves[i]["score"] > bestScore
          bestScore = moves[i]["score"]
          bestMove = i
        end
      end
    else
      bestScore = 10000
      moves.length.times do |i|
        if moves[i]["score"] < bestScore
          bestScore = moves[i]["score"]
          bestMove = i
        end
      end
    end

    return moves[bestMove]
  end
end
