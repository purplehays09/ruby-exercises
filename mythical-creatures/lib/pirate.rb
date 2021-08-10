class Pirate
  HEINOUS_MAX = 3
  attr_reader :name, :job, :booty

  def initialize(name, job = "Scallywag")
    @name = name
    @job = job
    @cursed = false
    @heinous_meter = 0
    @booty = 0
  end

  def cursed?
    @cursed
  end

  def commit_heinous_act
    @heinous_meter += 1

    if @heinous_meter >= HEINOUS_MAX
      @cursed = true
    end
  end

  def rob_ship
    commit_heinous_act
    @booty += 100
  end

end