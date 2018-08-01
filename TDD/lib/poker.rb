class Card
  def initialize(suit,value)
    @suit = suit
    @value = value
  end

end

class Deck

  def initialize
    @deck = []
    populate_deck
  end

  def populate_deck
    values = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12 ,13]
    suits = ["H","S","D","C"]
    values.each do |val|
      suits.each do |suit|
        @deck << Card.new(suit, val)
      end
    end
  end

  def shuffle_deck
    @deck.shuffle
  end

  # def
  # end

end

class Hand
  def initialize(hand)
    @hand = hand
  end

  attr_reader :hand

  def straight_flush?
    values = []
    suit = []
    hand.each do |card|
      suit << card.suit
      values << card.value
    end
    suit.all?(suit[0]) && (values.sort == [*values.min..values.min+5])
  end

  def four_kind
    values = Hash.new {|h,k| h[k] = 0}
    hand.each do |card|
      values[card.value] += 1
    end
    values.select {|h,v| v == 4}.empty? ? false : true
  end

  def full_house
    values = Hash.new {|h,k| h[k] = 0}
    hand.each do |card|
      values[card.value] += 1
    end
    values.select {|h,v| v == 3 || v == 2}.length == 2
  end

  def flush
    suit = []
    hand.each do |card|
      suit << card.suit
    end
    suits.all?(suit[0])
  end

  def straight
    values = []
    hand.each do |card|
      values << card.value
    end
    values.sort == [*values.min..values.min+5]
  end

  def three_kind
    values = Hash.new {|h,k| h[k] = 0}
    hand.each do |card|
      values[card.value] += 1
    end
    values.select {|h,v| v == 3}.length == 1
  end

  def two_pair
    values = Hash.new {|h,k| h[k] = 0}
    hand.each do |card|
      values[card.value] += 1
    end
    values.select {|h,v| v == 2}.length == 2
  end

  def one_pair
    values = Hash.new {|h,k| h[k] = 0}
    hand.each do |card|
      values[card.value] += 1
    end
    values.select {|h,v| v == 2}.length == 1
  end

  def high_pair
    values = []
    hand.each do |card|
      values << card.value
    end
    values.max
  end

end



class Player

  def initialize
    hand
  end

end

class Game

  def initialize
  end

end
