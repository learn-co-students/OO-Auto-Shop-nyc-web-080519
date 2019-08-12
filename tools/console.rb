require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

o1 = CarOwner.new("Bob")
o2 = CarOwner.new("Phillip")
o3 = CarOwner.new("Alice")
o4 = CarOwner.new("Greg")

m1 = Mechanic.new("Dave", "Sportscar")
m2 = Mechanic.new("Fred", "Sedan")
m3 = Mechanic.new("Gary", "Truck")
m4 = Mechanic.new("Jim", "Sedan")

c1 = Car.new("Ford", "Taurus", "Sedan", o1, m2)
c2 = Car.new("Honda", "Civic", "Sedan", o2, m4)
c3 = Car.new("Ford", "F-150", "Truck", o1, m3)
c4 = Car.new("Toyota", "Supra", "Sportscar", o3, m1)
c5 = Car.new("Ford", "F-150", "Truck", o1, m3)
c6 = Car.new("Ford", "F-150", "Truck", o1, m3)
c7 = Car.new("Ford", "F-150", "Truck", o1, m3)
c8 = Car.new("Toyota", "Supra", "Sportscar", o3, m1)
c9 = Car.new("Toyota", "Supra", "Sportscar", o3, m1)
c10 = Car.new("Toyota", "Supra", "Sportscar", o4, m1)

binding.pry
