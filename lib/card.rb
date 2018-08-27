
# card.rb

class Card
  attr_reader :value, :suit

  def initialize(value, suit)
    @value = value
    @suit = suit
    suit_options = [:hearts, :spades, :clubs, :diamonds]
    value_options = *(1..13)
    raise ArgumentError.new "Invalid card suit!" unless suit_options.include? (suit)
    raise ArgumentError.new "Invalid card number!" unless value_options.include? (value)

  end

  def to_s
    # Test to ensure that to_s works for cards values 1, and 11-13
    case @value
    when 1
      @value = "Ace"
    when 11
      @value = "Jack"
    when 12
      @value = "Queen"
    when 13
      @value = "King"
    end
    return "#{value} of #{suit.to_s}"
  end

end
