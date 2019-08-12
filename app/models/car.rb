class Car

  attr_reader :make, :model, :classification, :owner, :mechanic

  @@all = []

  def initialize(make, model, classification, owner, mechanic)
    @make = make
    @model = model
    @classification = classification
    @owner = owner
    @mechanic = mechanic
    @@all << self
  end

  def experts
    Mechanic.all.select do |mechanic|
      mechanic.specialty == self.classification
    end
  end


  def self.all
    @@all
  end

  def self.classifications
    all.map do |car|
      car.classification
    end.uniq
  end

end
