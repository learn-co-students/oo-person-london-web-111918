# your code goes here
class Person

  attr_accessor  :bank, :hap_pts, :hyg_pts, :salary
  attr_reader :name

  def initialize(name, bank = 25, hap_pts = 8, hyg_pts = 8)
    @name = name
    @bank = bank
    @hap_pts = hap_pts
    @hyg_pts = hyg_pts
  end

  def bank_account
    @bank
  end

  def bank_account=(bank)
    @bank = bank
  end

  def get_paid(salary)
    @bank += salary
    return "all about the benjamins"
  end


  def happiness
    @hap_pts
  end

  def happiness=(hap_pts)
    if hap_pts < 0 || @hap_pts > 10
      @hap_pts = 0
    elsif hap_pts > 10 || @hap_pts > 10
      @hap_pts = 10
    elsif hap_pts >= 0 && hap_pts <= 10
      @hap_pts = hap_pts
    else
      return "Happiness cannot exceed 10 or be below 0."
    end
    @hap_pts
  end

  def hygiene
    @hyg_pts
  end

  def hygiene=(hyg_pts)
    if hyg_pts < 0 || @hyg_pts < 0
      @hyg_pts = 0
    elsif hyg_pts > 10 || @hyg_pts > 10
      @hyg_pts = 10
    elsif hyg_pts >= 0 && hyg_pts <= 10
      @hyg_pts = hyg_pts
    else
      return "Happiness cannot exceed 10 or be below 0."
    end
    @hyg_pts
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

  def happy?
    @hap_pts > 7 ? true : false
  end

  def clean?
    @hyg_pts > 7 ? true: false
  end

  def call_friend(friend)
    self.happiness += 3
    friend.happiness += 3

    return "Hi #{friend.name}! It\'s #{self.name}. How are you?"
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
    else
      return "blah blah blah blah blah"
    end
  end

end
