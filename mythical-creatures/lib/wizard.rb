class Wizard
  SPELL_MAX = 3
  attr_reader :name
  def initialize(name, bearded: true)
    @name = name
    @bearded = bearded
    @rested = true
    @spell_count = 0
  end

  def bearded?
    @bearded
  end

  def incantation(text)
    text.prepend("sudo ")
  end

  def rested?
    @rested
  end
  
  def cast
    @spell_count += 1
    if @spell_count >= SPELL_MAX
      @rested = false
    end
    "MAGIC MISSILE!"
  end
end