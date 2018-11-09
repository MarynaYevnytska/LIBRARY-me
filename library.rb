
class Autor
    require 'json'
  attr_reader :name, :bib
  @storage_file = "2_Autors.json"
  file_name = @storage_file
    def initialize (name = "Autor name")
      @autor, @bib = name, bib
    end
    def view_each
        file_name=@storage_file
        puts file_name
        list = File.open(file_name, 'r') {|file| file.readlines}
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
  @@storage_file= "1_Readers.txt"
  attr_accessor :name, :email, :city, :street, :house
    @@count=File.open(@@storage_file, 'r') {|file| file.readlines}.size
    def initialize (name, email, city, street, house)
      @name, @email, @city, @street, @house  = name, email, city, street, house
    end

    def add_new_reader
      readers = "name,#{@name},email,#{@email},city, #{@city},street,#{ @street},house, #{@house}"
      exist_readers = File.open(@@storage_file, "r") {|line| line.readlines}
      for i in 0...exist_readers.length do
        if readers.chomp == exist_readers[i].chomp
          puts "The reader exits, try again, please "
          welcom.self.call
        end
      end
      File.open(@@storage_file,"a") {|file| file.puts readers.chomp}
      @@count+=1
      puts "!!!!WOW!!!! We are so glad than you #{@name} will be a part of our community, you email is #{@email}, you live in #{@city},on the street #{@street}, in the house #{@house}"
    end
      def current_reader
        readers = "name,#{@name},email,#{@email},city, #{@city},street,#{ @street},house, #{@house}"
        exist_readers = File.open(@@storage_file, "r") {|line| line.readlines}
        for i in 0...exist_readers.length do
          if readers.chomp == exist_readers[i].chomp
            puts "The reader exits, glad to see you "
            current_reader = exist_readers[i].chomp
          else
            puts "Sorry, I don't find the reader. Try again"
            welcom.self.call
          end
        end
        puts current_reader
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

def welcom
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
  reader.current_reader
  end
end
  welcom.call
  puts "Lets go! Represent for yor the list of aviable autors"
  autors_list=Autor.new
  autors_list.view_each
  autor_of_book = questions {"Enter autors name or bib-numer :"}
  books_list.view_each
  statistica=Order.new
