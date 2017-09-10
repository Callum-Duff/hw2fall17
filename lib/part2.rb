class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end

def rps_game_winner(game)
  raise WrongNumberOfPlayersError unless game.length == 2

  #Check to make sure the moves from each player are valid
  raise NoSuchStrategyError unless game[0][1] =~ /[rps]/i
  raise NoSuchStrategyError unless game[1][1] =~ /[rps]/i
  player1, player2 = game[0], game[1]
  rockRegex, paperRegex, scissorsRegex = /r/i, /p/i, /s/i

  #Check if players chose the same thing, if they did, return player1
  return player1 unless player1[1].downcase != player2[1].downcase

  #RPS game logic
  if player1[1] =~ rockRegex
    if player2[1] =~ scissorsRegex
      return player1
    else #Player 2 chose paper, and wins
      return player2
    end
  elsif player1[1] =~ paperRegex
    if player2[1] =~ rockRegex
      return player1
    else #Player 2 chose scissors, and wins
      return player2
    end
  else #Player1 chose scissors
    if player2[1] =~ paperRegex
      return player1
    else #Player2 chose rock, and wins
      return player2
    end
  end

end

def rps_tournament_winner(tournament)
  # YOUR CODE HERE
end




#feel free to add your own helper functions as needed
