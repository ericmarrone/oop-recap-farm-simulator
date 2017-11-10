class Field
  @@fields = []
  def initialize(name, size)
    @name = name
    @hectares = size
    @type = nil
    @food = 0
    @yield = 0
  end
  def hectares
    @hectares
  end

  def hectares=(size)
    @hectares = size
  end

  def name
    @name
  end

  def name=(name)
    @name = name
  end
  def food
    @food
  end

  def type
    @type
  end

  def food=(food)
    @food = food

  end

  def type=(type)
    @type = type
  end

  def self.all
    @@fields
  end
  #
  # def harvest
  #   harvest = 100 * hectares
  #   @food += harvest
  #   return harvest
  # end


end

class Corn < Field
  def self.create(name, size)
    new_field = Corn.new(name, size)
    new_field.type = "corn"
    @@fields << new_field
    return new_field
  end

  def harvest
    harvest = 20 * hectares
    @food += harvest
    return harvest
  end

end

class Wheat < Field
  def self.create(name, size)
    new_field = Corn.new(name, size)
    new_field.type = "wheat"
    @@fields << new_field
    return new_field
  end

  def harvest
    harvest = 30 * hectares
    @food += harvest
    return harvest
  end


end

# c = Wheat.new("Erics Farm", 20)
#
# p c.harvest

# my_field = Corn.create("Corn field", 100)
# puts Field.all.inspect
