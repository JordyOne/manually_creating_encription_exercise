class Encryption
  def initialize(deck)
    @deck = deck
  end

  def move_a_joker
    index = @deck.index('A')
    @deck[index], @deck[index + 1] = @deck[index + 1], @deck[index]
    @deck
  end

  def move_b_joker
    move_a_joker
    num_index = @deck.index(1)
    b_index = @deck.index('B')
    new_b_index = num_index+1

    @deck[b_index], @deck[new_b_index] = @deck[new_b_index], @deck[b_index]
    @deck
  end

  def triple_cut
    move_b_joker
    @deck.rotate!
  end
end