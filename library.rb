

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
  require 'json'
    def initialize (name, email, city, street, house)
      @name, @email, @city, @street, @house  = name, email, city, street, house
    end

    def add_new_reader
      readers = {name:@name, email: @email,city: @city, street: @street, house:@house }
      string = readers.to_json
      puts string
      File.open("1_Readers.txt",'a') {|file| file.puts string}
      puts "ADD"
      puts "!!!!WOW!!!! We are so glad than you #{@name} will be a part of our community, you email is #{@email}, you live in #{@city},on the street #{@street}, in the house #{@house}"
    end

      def check_old_reader
        string = "{\"name\":\"#{@name}\",\"email\":\"#{@email}\",\"city\":\"#{@city}\",\"street\":\"#{@street}\",\"house\":\"#{@house}\"}"
        reders_list = File.open("1_Readers.txt", 'r') {|file| file.readlines}
        puts a=reders_list.size
        puts reders_list[0].class
        puts reders_list[-1]
        puts string
        c =reders_list[-1].size
        c_1 = string.size
        puts c==c_1
        puts string==reders_list[-1]
        b = reders_list.include?(string)
        puts b
        end
end

#class Order
#end

def questions
   print yield
  answer = gets.chomp
end

puts "Hello, I am Marina, glad to see you into our Library"
new_old = questions {"Are you first time there? (Enter Yes or No):"}
name = questions {"Enter you name:"}
email = questions {"Enter you email:"}
city  = questions {"Enter you city:"}
street = questions {"Enter you street:"}
house = questions {"Enter you house:"}
reader = Reader.new(name, email,city, street, house)

if new_old=="yes" or new_old=="Yes"
  join_new = questions { "Great! Do You want to join? (Enter Yes or No):"}
    if join_new=="yes" or join_new=="Yes"
      reader.add_new_reader
      puts "Great! You were added to the most reading readers! "
      end
  else
  puts "Welcom! Lets check  your information!"
  reader.check_old_reader
end
puts "lets GO"
