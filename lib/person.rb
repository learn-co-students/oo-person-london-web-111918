# your code goes here

require 'pry'
class Person
  
  attr_accessor :bank_account, :happiness, :hygiene
  attr_reader :name
  
# binding.pry
  
  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness=(index)
    if index > 10
      @happiness=10
    elsif index < 0
      @happiness=0
    else
      @happiness=index
    end
  end
  
  def hygiene=(index)
    if index>10
      @hygiene=10
    elsif index<0 
      @hygiene=0
    else
      @hygiene=index
    end
  end
  
  def happy?
    self.happiness > 7? true : false
  end
  
  def clean?
    self.hygiene > 7? true : false
  end
  
  def get_paid(salary)
    @bank_account += salary
    return "all about the benjamins"
  end
  
  def take_bath
    self.hygiene += 4
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end
  
  def work_out
    self.hygiene -= 3
    self.happiness += 2
    return "♪ another one bites the dust ♫"
  end
  
  def call_friend(friend)
    self.happiness += 3
    friend.happiness += 3
    return "Hi #{friend.name}! It's #{@name}. How are you?"
  end
  
  def start_conversation(friend, topic)
    if topic == "politics"
      self.happiness -= 2
      friend.happiness -= 2
    return "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      self.happiness += 1 
      friend.happiness += 1
    return "blah blah sun blah rain"
    else topic == "other"
    return "blah blah blah blah blah"
  end
  end

  
end