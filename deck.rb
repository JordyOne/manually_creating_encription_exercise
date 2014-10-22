class Deck

  def self.populate_deck
    counter = 1
    deck = []
    52.times do
      deck.push(counter)
      counter += 1
    end
    deck.push('A', 'B')
  end
end