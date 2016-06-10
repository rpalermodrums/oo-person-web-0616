require "pry"

# your code goes here
class Person
  attr_accessor :bank_account
  attr_reader :name, :happiness, :hygiene
  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness=(happiness)
    if happiness > 10
      @happiness = 10
    elsif happiness < 0
      @happiness = 0
    else
      @happiness = happiness
    end
  end

  def hygiene=(hygiene)
    if hygiene > 10
      @hygiene = 10
    elsif hygiene < 0
      @hygiene = 0
    else
      @hygiene = hygiene
    end
  end

  def happy?
    @happiness > 7
  end

  def clean?
    @hygiene > 7
  end

  def get_paid(amount)
    @bank_account += amount
    "all about the benjamins"
  end

  def take_bath(hygiene = @hygiene += 4)
    self.hygiene=(hygiene)
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out(hygiene = @hygiene -= 3, happiness = @happiness += 2)
    self.hygiene=(hygiene)
    self.happiness=(happiness)
    "♪ another one bites the dust ♫"
  end

  def call_friend(friend, happiness = @happiness += 3)
    friend.happiness += 3
    self.happiness=(happiness)
    "Hi #{friend.name}! It's #{@name}. How are you?"
  end

  def start_conversation(person, topic, happiness = @happiness)
    if topic == "politics"
      self.happiness=(@happiness -= 2)
      person.happiness=(happiness -= 2)
      "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      self.happiness=(@happiness + 1)
      person.happiness=(happiness + 1)
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end
  end
end
