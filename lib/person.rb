# your code goes here
require "pry"

class Person

  attr_accessor :bank_account
  attr_reader :name, :happiness, :hygiene

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness=(points)
    if points > 10
      @happiness = 10
    elsif points < 0
      @happiness = 0
    else
      @happiness = points
    end
  end

  def hygiene=(points)
    if points > 10
      @hygiene = 10
    elsif points < 0
      @hygiene = 0
    else
      @hygiene = points
    end
  end

  def clean?
    self.hygiene > 7 ? true : false
  end

  def happy?
    self.happiness > 7 ? true : false
  end

  def get_paid(salary)
    self.bank_account += salary
    "all about the benjamins"
  end

  def take_bath
    self.hygiene += 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.happiness += 2
    self.hygiene -= 3
    "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    self.happiness += 3
    friend.happiness += 3
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(person, topic)
    case topic
    when "politics"
      person.happiness -= 2
      self.happiness -= 2
      "blah blah partisan blah lobbyist"
    when "weather"
      person.happiness += 1
      self.happiness += 1
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end
  end

end

# bob = Person.new("Bob")
# bob.happiness += 1

# Pry.start
