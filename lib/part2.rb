class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end

def rps_game_winner(game)
  raise WrongNumberOfPlayersError unless game.length == 2

  if game[0][0].is_a?(Array) then
    winner1 = rps_game_winner(game[0])
    winner2 = rps_game_winner(game[1])
    game = [winner1, winner2]
  end

  raise NoSuchStrategyError unless /^(R|P|S){2}$/ =~ game[0][1] + game[1][1]

  case game[0][1]
    when "R"
      if game[1][1] == "P" then
        game[1]
      else
        game[0]
      end
    when "P"
      if game[1][1] == "S" then
        game[1]
      else 
        game[0]
      end
    when "S"
      if game[1][1] == "R" then
        game[1]
      else
        game[0]
      end
  end
end

def rps_tournament_winner(tournament)
  rps_game_winner(tournament)
end
