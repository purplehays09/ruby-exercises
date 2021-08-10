class Dragon
  attr_reader :name, :rider, :color, :hunger_meter

  def initialize(name,color,rider)
    @name = name
    @rider = rider
    @color = color
    @hungry = true
    @hunger_meter = 0
    @hunger_max = 3
  end

  def hungry?
    @hungry
  end

  def eat
    @hunger_meter += 1
    # won't stop eating currently. 
    if @hunger_meter >= @hunger_max
      @hungry = false
    end
  end
end