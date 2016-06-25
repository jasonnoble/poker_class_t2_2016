# This is the Card class
class Card
  attr_reader :suit, :value

  def initialize(suit, value)
    @suit = suit
    @value = value
  end

  def inspect
    "#{value} of #{suit}"
  end
end
