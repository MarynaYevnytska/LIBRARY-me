class Pets
  attr_accessor :name, :food
  $count_pets=0
  @@count_gavs=0
  def initialize (name, food)
  @name, @food = name, food
  end

  def add_to_list
    puts "#{$count_pets} - th pets appears into our home, his name is #{@name}, he like #{@food}"
    $count_pets+=1
  end
end

class Dog < Pets
  def gav_gav
    puts "gav-gav #{@@count_gavs} time"
    @@count_gavs+=1
  end
end

for i in 1..10

    frodo=Dog.new("Frodo", "meat")
    frodo.add_to_list
    frodo.gav_gav
end

string="string"
my_arr=["string", 1, true , "2",]
b = my_arr.include?("2")
puts b
