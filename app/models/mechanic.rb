class Mechanic

  attr_reader :name, :specialty
  @@all = []

  def initialize(name, specialty)
    @name = name
    @specialty = specialty
    @@all << self
  end

  def self.all
    @@all
  end

  def my_cars
    Car.all.select do |car|
      car.mechanic == self
    end
  end

  def my_car_owners
    self.my_cars.map do |car|
      car.owner
    end
  end

  def my_car_owner_names
    self.my_car_owners.map do |car_owner|
      car_owner.name
    end
  end
end
