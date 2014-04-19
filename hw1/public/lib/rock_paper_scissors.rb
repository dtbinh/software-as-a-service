class RockPaperScissors

  # Exceptions this class can raise:
  class NoSuchStrategyError < StandardError ; end

  def self.winner(player1, player2)
    # YOUR CODE HERE
    raise NoSuchStrategyError, "Strategy must be one of R,P,S" if player1[1].match(/[RPS]/) == nil or player2[1].match(/[RPS]/) == nil
    return player1 if player1[1] == player2[1] or (player1[1] == 'R' and player2[1] == 'S') or (player1[1] == 'P' and player2[1] == 'R') or (player1[1] == 'S' and player2[1] == 'P')
    return player2
  end

  def self.tournament_winner(tournament)
    # YOUR CODE HERE
    return self.winner(tournament[0], tournament[1]) if !tournament[0][0].is_a? (Array)
    return self.winner(self.tournament_winner(tournament[0]), self.tournament_winner( tournament[1]))
  end

end
