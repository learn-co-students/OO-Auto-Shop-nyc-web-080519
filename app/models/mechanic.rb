class Mechanic

  attr_reader :name, :specialty

  @@all = []

def initialize(name, specialty)
  @name = name
  @specialty = specialty
  @@all << self
end

def my_cars
  Car.all.select do |car|
    car.mechanic == self
  end
end

def my_owners
  my_cars.map do |car|
    car.owner
  end.uniq
end

def my_owners_names
  my_owners.map do |owner|
    owner.name
  end
end

def self.all
  @@all
end


end
