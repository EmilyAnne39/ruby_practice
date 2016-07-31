#Generally, with a class, we are creating a way to describe something.  We have the general description and and then describe what the elements of
#the class will do
#For this exercise, We are going to create the various classes need for each element of blackjack.  This includes the Card class, which outlines what our cards look 
#like (suit) and the cards' values (amount they're worth) with caveats of facecards and ace.

class Card #defines the object card
  attr_reader:suit, :value #can call suit from below. This is the same as, but easier than putting 'def suit @suit end' below
  def initialize(suit,value)#suit, value define parameters to our method aka tells us what our Card looks like
    @suit = suit #every card will have a value & suit.  These need methods in order to use them.
    @value = value
  end  
  
  def value #this describes how we define the value of our cards
    return 10 if ["J", "Q", "K"].include?(@value) #this says we're returning value of 10 for the J card (note ==)
    return 11 if @value == "A" #ace is worth 11
    return @value #otherwise, we're just returning the card's value (2,3,4, etc.)
  end
  
  def to_s
    "#{@value}-#{suit}" #this is a string replacement which allows us to use the suit and value together
  end 
end 
  
class Deck #this class describes the deck we'll use to get our cards
  attr_reader :cards
  
  def initialize
    @cards = Deck.build_cards
  end
  
  def self.build_cards #when called upon, this will build cards
    cards = []
    [:clubs, :diamonds, :spades, :hearts].each do |suit|
    (2..10).each do |number|
      cards << Card.new(suit, number) #this stores and shuffles the card that will be created into the array built above
  end
  end
  end
  
  ["J", "Q","K", "A"].each do |facecard|
    cards << Card.new(suit,facecard)
  end
  cards.shuffle


class Hand
  attr_reader :cards
  
  def initialize
    @cards = []
  end
  
  def hit!(deck)
    @cards << deck.cards.shift #shift is a method that returns the last two numbers (look this up)
  end
  
  def value
    cards.inject(0) {|sum,card| sum +=card.value } #what does inject do? why use 0 here?
  end
  
  def play_as_dealer(deck)
    if value < 16
    hit!(deck) #WTF does the exclamation point do?
    play_as_dealer #this allows us to keep hitting if we want more cards
    end
end   
 
  class Game
  attr_reader :player_hand, :dealer_hand
  def initialize
      @deck = Deck.new
      @player_hand = Hand.new #this is the way for a hand to get cards
      @dealer_hand = Hand.new
      2.times {@player_hand.hit!(@deck)}#there are two sent in for each player
      2.times {@dealer_hand.hit!(@deck)}
  end
    
  def hit
    @player_hand.hit!(@deck)
  end
  
  def stand
    @dealer_hand.play_as_dealer(@deck)
    @winner = determine_winner(@player_hand.value,@dealer_hand.value)
  end
  
  def status
    {:player_cards => @player_hand.cards, 
     :player_value => @player_hand.value,
     :dealer_cards => @dealer_hand.cards,
     :dealer_value => @dealer_hand.value,
     :winner => @winner}
  end

  def determine_winner (player_value, dealer_value)
      return :dealer if player_value > 21
      return :player if dealer_value > 21
      if player_value == dealer_value
        :push
      if player_value > dealer_value
        :player
      else
        :dealer
      end
  end

  def inspect #what is the inspect method?
    status
  end
end

describe Card do #this is an example of rspec (testing ruby)
  it "should accept suit and value when building" do
    card = Card.new(:clubs, 10)
    card.suit.should eq(:clubs)
    card.value.should eq(10)
  end
  
    it "should have a value of 10 for facecards" do
    facecards = ["J", "Q", "K"] #this assigns value to our facecards
    facecards.each do |facecard|#for each facecard, do this
      card = Card.new(:hearts, facecard)
      card.value.should eq(10)
    end
    
    it "should have a value of 4 for 4-clubs" do
      card = card.new(:clubs, 4)
      card.value.should eq(4)
    end
    
    it "should return 11 for Ace" do
      card = Card.new(:daimonds, "A")
      card.value.should eq(11)
    end
  
    it "should be formatted nicely" do
      card = Card.new(:diamonds, "A") 
      card.to_s.should eq("A-diamonds")  #this shows how cards will display in our game e.g. A-diamonds, 4-clubs, etc.
    end
end

#the above describes the 'behavior' of a card in our class.  How the card will display, what it's value is, and what it's suit is along with caveats for face & ace cards.

describe Deck do
  it "should build 52 cards" do
    Deck.build_cards.length.should eq(52)
  end
  
  it "should have 52 cards when new deck" do
    Deck.new.cards.length.should eq(52)
  end

  it "should be shuffled" do
  end
#the above outlined our deck
end

describe Game do
  it "should have a players hand" do
      Game.new.player_hand.cards.length.should eq(2)
    end
  it "should have a dealers hand" do 
      Game.new.dealer_hand.cards.length.should eq(2)
    end 
  it "should have a status" do
    Game.new.status.should_not_be_nil
  end
  it "should be able to hit when I tell it to" do
    game = Game.new
    game.hit #if we hit we want a new card so,
    game.player_hand.cards.length.should eq(3)
  end 
  it "should play the dealer hand when I stand" do
    game = Game.new
    game.stand #this should play the dealer's hand
    game.status[ :winner ].should_not_be_nil
  end

describe "#determine_winner" do
    it "should have dealer win when player busts" do
      Game.new.determine_winner(22,15).should eq(:dealer)
    end
    
    it "should have player win if dealer busts" do
      Game.new.determine_winner(18,22).should eq(:player) #18 vs. 22 shows that if dealer gets over 21, player wins
    end 
    it "should have player win if player > dealer" do
      Game.new.determine_winner(18,15).should eq(:player)
    end 
    it "should have push if tie" do #what is push here?
      Game.new.determine_winner(18,16).should eq(:push) #16 vs. 16 shows that if both stay, player wins
    end
  end
  
describe Hand do
  it "should calculate the value correctly" do
    deck = mock(:deck, :cards => [Card.new(:clubs, 4), Card.new(:diamonds, 10)]) #What is 'mock' I don't get this line much
    hand = Hand.new
    2.times { hand.hit!(:deck) }
    hand.value.should eq(14)
  end
  
  it "should take from the top of the deck" do
    club4 = Card.new(:clubs, 4)
    diamond7 = Card.new(:diamonds, 7)
    clubK = Card.new(:clubs, "K")
    deck = mock(:deck, :cards => [club4, diamond7, clubK])
    hand = Hand.new
    2.times {hand.hit!(:deck)}
    hand.value.should eq([club4, diamond7])
  end
end
  describe "#play_as_dealer" do #what does the hash sign do here?
    it "should hit below 16" do
      deck = mock(:deck, :cards => [Card.new(:clubs, 4), Card.new(:diamonds, 4), Card.new(:clubs, 2), Card.new(:hearts, 6)]) #I think this allows for many hits? #WTF is 'mock' I don't get this line much
      hand = Hand.new
      2.times { hand.hit!(deck)}
      hand_play_as_dealer(deck)
      hand.value.should eq (16)
    end
    
    it "should not hit above" do
    deck = mock(:deck, :cards => [Card.new(:clubs, 8), Card.new(:diamonds, 9)])
    hand = Hand.new
    2.times {hand.hit!(deck)}
    hand.play_as_dealer(deck)
    hand.value.should ea(17)
    end
    
    it "should stop at 21" do
    deck = mock(:deck, :cards => [Card.new(:clubs, 4), Card.new(:diamonds, 4), Card.new(:clubs, "K")]) 
      2.times { hand.hit!(deck)}
      hand_play_as_dealer(deck)
      hand.value.should eq(21)
    end 
  end


