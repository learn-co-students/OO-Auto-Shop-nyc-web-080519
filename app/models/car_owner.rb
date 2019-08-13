class CarOwner

  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def my_cars
    Car.all.select do |car|
      car.owner == self
    end
  end

  def my_mechanics
    self.my_cars.map do |car|
      car.mechanic
    end
  end

  def self.avg_cars_owned
    total_cars = self.all.sum do |car_owner|
      car_owner.my_cars.count
    end
    total_cars.to_f / self.all.count
  end

end
