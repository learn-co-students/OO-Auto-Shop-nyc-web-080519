require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

co1 = CarOwner.new("Amy")
co2 = CarOwner.new("Steven")
co3 = CarOwner.new("Howard")

m1 = Mechanic.new("Bob", "regular")
m2 = Mechanic.new("John", "exotic")
m3 = Mechanic.new("Joe", "antique")
m4 = Mechanic.new("Shmoe", "antique")

c1 = Car.new("Volvo", "XC-90", "regular", co3, m1)
c2 = Car.new("Acura", "TL", "antique", co1, m3)
c3 = Car.new("Tesla", "model III", "exotic", co2, m2)
c4 = Car.new("Tesla", "model III", "exotic", co1, m2)

binding.pry
