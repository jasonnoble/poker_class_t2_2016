require './lib/deck'

describe Deck do
  let(:deck) { Deck.new }
  it 'should have 52 cards' do
    expect(deck.cards.length).to eq(52)
  end

  Deck::SUITS.each do |suit|
    let(:cards_of_suit) { deck.cards.select { |card| card.suit == suit } }

    it "should have 13 #{suit} cards" do
      expect(cards_of_suit.length).to eq(13)
    end

    Deck::VALUES.each do |value|
      it "should have a #{value} of #{suit} card" do
        expect(cards_of_suit.map(&:value)).to include(value)
      end
    end
  end

  describe '#shuffle' do
    it 'should randomize the card order' do
      expect do
        deck.shuffle
      end.to change(deck, :cards)
    end
  end

  describe '#draw' do
    it 'returns a card' do
      expect(deck.draw).to be_a(Card)
    end

    it 'removes the card from the deck' do
      expect { deck.draw }.to change(deck.cards, :length).by(-1)
    end
  end
end
