class Medusa
  STONE_MAX = 3
  attr_reader :name, :statues

  def initialize(name)
    @name = name
    @statues = []
    @capped = false
  end
  
  def stare(victim)
    @statues << victim
    victim.freeze
    if @statues.length >= STONE_MAX
      @capped = true
      statues[0].thaw
      @statues.shift 
    end
    
  end

  def capped?
    @capped
  end
end


class Person

  attr_reader :name
  def initialize(name)
    @name = name     
    @stoned = false
  end

  def freeze
    @stoned = true
  end
  
  def thaw
    @stoned = false    
  end
  
  
  def stoned?
    @stoned
  end

end