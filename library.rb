

class Autor
  attr_reader :name, :bib
  @storage_file = "2_Autors.json"
    def initialize (name = "Autor name")
      @autor, @bib = name, bib
    end
    def view_each
        file_name=@storage_file
        puts file_name
        list = File.open("2_Autors.json", 'r') {|file| file.readlines}
        puts list
    end
end


class Book < Autor
  @storage_file= "3_Books.json"
  attr_reader :title
  def initialize (title)
    @title = title
  end

end


class Reader
  require 'json'
  attr_accessor :name, :email, :city, :street, :house
    @@count=File.open("1_Readers.json", 'r') {|file| file.readlines}.size
    def initialize (name, email, city, street, house)
      @name, @email, @city, @street, @house  = name, email, city, street, house
    end

    def add_new_reader
      readers = {"name_US-#{@@count}": @name, "email-US-#{@@count}": @email, "city US-#{@@count}": @city, "streetUS-#{@@count}": @street, "houseUS-#{@@count}": @house, }
      string = JSON.generate(readers)
      puts readers.class
      puts readers
      puts string
      puts string.class
      puts "//////////////////////////write//////////////////////////////"
      exist_readers = File.read ("1_Readers.json")#{|file| file.readline}
      puts exist_readers.class
      puts exist_readers
      exist_readers_hash = JSON.parse(exist_readers)
      puts exist_readers_hash.class
      puts exist_readers_hash['name_US-2']


      #valid = exist_readers.include?(readers)
      File.open("1_Readers.json","r",encoding='utf-8') {|file| file.puts string}
      @@count+=1
      puts "ADD"
      puts "!!!!WOW!!!! We are so glad than you #{@name} will be a part of our community, you email is #{@email}, you live in #{@city},on the street #{@street}, in the house #{@house}"
    end

      def check_old_reader
        string = "{\"name\":\"#{@name}\",\"email\":\"#{@email}\",\"city\":\"#{@city}\",\"street\":\"#{@street}\",\"house\":\"#{@house}\" }"
        reders_list = File.read('1_Readers.json')
        reders_list_hash = JSON.parse(reders_list)
        puts reders_list.class
        puts reders_list_hash
        puts reders_list.class
        puts reders_list_hash.class
        puts string.class
        a=reders_list.size
        puts reders_list[-1].class
        puts reders_list[-1]
        puts string
        puts c =reders_list[-1].size
        puts c_1 = string.size
        puts c == c_1
        puts string == reders_list[-1]
        b = reders_list.include?(string)
        puts b
        end
end

class Order

  def rating_of_books
  end
end

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

if new_old=="yes" or new_old == "Yes"
  join_new = questions { "Great! Do You want to join? (Enter Yes or No):"}
    if join_new =="yes" or join_new == "Yes"
      reader.add_new_reader
      puts "Great! You were added to the most reading readers! "
    else
      puts "Some other time"
      end
  else
  puts "Welcom! Lets check  your information!"
  reader.check_old_reader
end



  puts "Lets go! Represent for yor the list of aviable autors"
  autors_list=Autor.new
  autors_list.view_each
  autor_of_book = questions {"Enter autors name or bib-numer :"}
  books_list=Book.new(autor_of_book)
  books_list.view_each
  statistica=Order.new

#statistica.top_book
