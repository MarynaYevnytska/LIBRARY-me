

class Autor
attr_reader :name, :biographi

  def initialize (name = "Autor name", biographi)
    @name, @biographi = name, biographi
  end
end


class Book
end

class Reader
  attr_accessor :name, :email, :city, :street, :house
    def initialize (name, email, city, street, house)
      @name, @email, @city, @street, @house  = name, email, city, street, house
    end

    def add_new_reader
        puts "!!!!WOW!!!! #{@name}"
      end
end

class Order
end


def questions_for_regestration_autorisation
  reader_hash = {}
  reader_ary = Array.new

  print "Enter you name: "
  name = gets.chomp
  reader_hash[:name] = name
  reader_ary.push(name)

  print "Enter you email: "
  email = gets.chomp
  reader_hash[:email] = email
  reader_ary.push(email)

  print "Enter you city: "
  city = gets.chomp
  reader_hash[:city] = city
  reader_ary.push(city)


  print "Enter you street: "
  street  = gets.chomp
  reader_hash[:street] = street
  reader_ary.push(street)

  print "Enter you house: "
  house  = gets.chomp
  reader_hash[:house] = house
  puts reader_hash, reader_ary
  return reader_hash
end


puts "Are you first time there? (Enter Yes or No): "
answer=gets.chomp


if answer=="yes" or answer=="Yes"
  puts "Great! You can join to the most reading readers! "
  readers = questions_for_regestration_autorisation
  puts readers
  #new_reader = Reader.new (readers[:name], readers[:email] , readers[:city] ,readers[:street] , readers[:house])
  #new_reader.add_new_reader
  puts "Great! You were added to the most reading readers! "
else
  puts "Welcom! Lets check  your information!"
  questions_for_regestration_autorisation
  puts "Welcom! Glad to see you again!"
end


puts "lets GO"
