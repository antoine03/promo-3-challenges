def bank_score
  # TODO: Use Random to get a new random score
  21 - rand(6)
end

def pick_card
  # TODO: Use Random to get a new random card
  1 + rand(11)
end

def game_outcome(bank, score)
  # TODO: Take the bank and the score and output an array containing the bank and then the score
  return [bank, score]
end
