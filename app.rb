require_relative 'deck.rb'
require_relative 'cypher.rb'
require_relative 'encryption'

deck =  Deck.populate_deck


# message = Cypher.new('hellolkdsjflaksdjfl;ajf!!')

now = Encryption.new(deck).move_b_joker
p now