

class Hobbit
  
  ADULT_AGE = 33
  OLD_AGE = 101

  attr_reader :name, :disposition, :age

  def initialize(name, disposition = 'homebody')
    @name = name
    @disposition = disposition
    @age = 0
    @adult = false
    @old = false
  end

  def celebrate_birthday
    @age += 1
    if @age >= ADULT_AGE
      @adult = true
    end
    if @age >= OLD_AGE
      @adult = false
      @old = true
    end
  end

  def adult?
    @adult
  end

  def old?
    @old
  end

  def has_ring?
    # if @name == "Frodo"
    #   true
    # else
    #   false
    # end

    @name == "Frodo" ? true : false
  end

  def is_short?
    true
  end
end