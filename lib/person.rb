class Person
 
 attr_reader :name, :happiness, :hygiene
 
 attr_accessor :bank_account
 
 def initialize(name)
   @name = name
   @bank_account = 25
   @happiness = 8
   @hygiene = 8
 end
 
 def clean?
   if @hygiene > 7
     return true 
   else
     return false
   end
 end
 
 def happy?
   @happiness > 7
 end
 
 def get_paid(salary)
   self.bank_account += salary
   return "all about the benjamins"
 end
 
 def take_bath
   self.hygiene += 4
   return "♪ Rub-a-dub just relaxing in the tub ♫"
 end
 
 def work_out
   self.happiness += 2 
   self.hygiene -= 3
   return "♪ another one bites the dust ♫"
 end
 
 def happiness=(value)
  if value < 0 
      @happiness = 0 
    elsif value > 10 
      @happiness = 10 
    else 
      @happiness = value 
  end
 end
 
 
 def hygiene=(stink)
   if stink < 0 
     @hygiene = 0 
   elsif stink > 10 
    @hygiene = 10
  else
   @hygiene = stink
  end
 end
 
 def call_friend(callee)
   self.happiness += 3
   callee.happiness += 3
   return "Hi #{callee.name}! It's #{self.name}. How are you?"
 end
 
 def start_conversation(starter, convo)
    if convo == "politics"
      self.happiness -= 2
      starter.happiness -= 2
      
     return "blah blah partisan blah lobbyist"
     
    elsif convo == "weather"
      self.happiness += 1 
     starter.happiness += 1
     return "blah blah sun blah rain"
    else
      return "blah blah blah blah blah"
    end
 end
 
 
 
 
end