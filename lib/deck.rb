require './lib/card'

# A Deck of cards
class Deck
  SUITS = [:hearts, :spades, :diamonds, :clubs].freeze
  VALUES = (2..10).map(&:to_s) + %w(J Q K A)

  attr_reader :cards

  def initialize
    @cards = []

    SUITS.each do |suit|
      VALUES.each do |value|
        @cards.push(Card.new(suit, value))
      end
    end
  end

  def shuffle
    @cards.shuffle!
  end

  def draw
    @cards.pop
  end

  def inspect
    "A fine deck of #{cards.length} cards"
  end
end
