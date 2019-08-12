class CarOwner

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def my_cars
    Car.all.select do |car|
      car.owner == self
    end
  end

  def my_classifications
    my_cars.map do |car|
      car.classification
    end
  end

  def my_mechanics
    my_cars.map do |car|
      car.mechanic
    end.uniq
  end

  def self.all
    @@all
  end

  def self.average_num_cars
    count_arr = all.map do |owner|
      owner.my_cars.count
    end
    return count_arr.sum / all.count
  end

end
