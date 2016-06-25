require './lib/card'

describe Card do
  let(:card) { Card.new(:heart, '5') }

  describe '#initialize(suit, value)' do
    it 'sets the suit' do
      expect(card.suit).to eq(:heart)
    end

    it 'sets the value' do
      expect(card.value).to eq('5')
    end
  end

  describe '#suit' do
    it 'returns the suit' do
      expect(card.suit).to eq(:heart)
    end
  end

  describe '#value' do
    it 'returns the value' do
      expect(card.value).to eq('5')
    end
  end
end
