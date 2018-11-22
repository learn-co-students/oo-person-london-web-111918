class Person
  attr_accessor :bank_account, :happiness, :hygiene
  attr_reader :name, :person #getter
  attr_writer #setter

  @@happiness = 8
  @@hygiene = 8

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = @@happiness
    @hygiene = @@hygiene

  end

  def name
    @name
  end

  def bank_account
    @bank_account
  end

  def self.happiness
    @@happiness
  end

  def self.hygiene
    @@hygiene
  end

  def happiness
    @happiness
  end

  def happiness=(happiness)
    if happiness >10
      @happiness = 10
    elsif happiness <0
      @happiness = 0
    else @happiness = happiness
    end
  end

  def hygiene
    @hygiene
  end

  def hygiene=(hygiene)
    if hygiene >10
      @hygiene = 10
    elsif hygiene <0
      @hygiene = 0
    else @hygiene = hygiene
    end
  end

  def happy?
    @happiness > 7
  end

  def clean?
    @hygiene > 7
  end

  def get_paid(salary)
    @bank_account = @bank_account + salary
    'all about the benjamins'
  end

  def take_bath
    @hygiene = @hygiene + 4
    self.hygiene=(@hygiene)
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    @hygiene = @hygiene - 3
    self.hygiene=(@hygiene)
    @happiness = @happiness + 2
    self.happiness=(@happiness)
    "♪ another one bites the dust ♫"
  end

  def call_friend(person)
    self.happiness += 3
    person.happiness += 3
    "Hi #{person.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(person, topic)
    if topic == "politics"
      self.happiness -=2
      person.happiness -= 2
      return "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      self.happiness += 1
      person.happiness += 1
      return "blah blah sun blah rain"
    end
    "blah blah blah blah blah"
  end

end
