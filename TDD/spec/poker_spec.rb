require 'rspec'
require 'tdd_exercises'

describe Card do

  describe "#initialize" do
    subject(:card) {Card.new("H",3)}

    it "should create an instance of the card with the correct
    suit" do
      expect(card.suit).to eq("H")
    end

    it "should create an instance of the card with the correct value" do
      expect(card.value).to eq(3)
    end

  end


end

describe Deck do
  describe "#initialize" do
    subject(:deck) { Deck.new}

    it "should have 52 cards in the deck" do
      expect(deck.deck.length).to eq(52)
    end

    it "should be a different deck than the previous one" do
      expect(deck.deck == deck.deck.shuffle).to eq(false)
    end
end

describe Hand do
  
end

describe Player do
end

describe Game do
end
