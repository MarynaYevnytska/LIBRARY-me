require 'json'

class Autor
  attr_reader :name, :bb

    def initialize
      @name, @bb = name, bb
    end
    def view_each(file_name)
        puts "File name #{file_name}"
        list = File.open(file_name) {|file| file.readlines}
        puts list
    end
end


class Book < Autor

    def view_each_by_bib(file_name, bb)
      keys = {1=> " bib -  1 ", 2=> " bib -  2 ", 3=> " bib -  3 ", 4=> " bib -  4 ", 5=> " bib -  5 ", 6=> " bib -  6 ", 7=> " bib -  7 ", 8=> " bib -  8 ", 9=> " bib -  9 ", 10=> " bib -  10 "}
      check = keys[bb.to_i]
        list = File.open(file_name) {|file| file.readlines}
          for i in 0...list.length do
            string = list[i].split(',')
            puts list[i] if string[0].chomp==check.chomp
          end
    end

end


class Reader
    attr_accessor :name, :email, :city, :street, :house
    @@storage_file= "1_Readers.txt"
    #@@count=File.open(@@storage_file, 'r') {|file| file.readlines}.size  # For creating unique - ID
    def initialize (name, email, city, street, house)
      @name, @email, @city, @street, @house  = name, email, city, street, house
    end

    def add_new_reader
      readers = "name,#{@name},email,#{@email},city,#{@city},street,#{@street},house,#{@house}"
      exist_readers = File.open(@@storage_file, "r") {|line| line.readlines}
      for i in 0...exist_readers.length do
        if readers.chomp == exist_readers[i].chomp
          puts "The reader exits, try again, please "
          welcom.self
        end
      end
      File.open(@@storage_file,"a") {|file| file.puts readers.chomp}
      #@@count+=1 # For creating unique - ID
      puts "!!!!WOW!!!! We are so glad than you #{@name} will be a part of our community, you email is #{@email}, you live in #{@city},on the street #{@street}, in the house #{@house}"
      represent
    end
      def current_reader
        readers = "name,#{@name},email,#{@email},city,#{@city},street,#{@street},house,#{@house}"
        exist_readers = File.open(@@storage_file, "r") {|line| line.readlines}
        for i in 0...exist_readers.length do
          if readers.chomp == exist_readers[i].chomp
            current_reader = exist_readers[i].chomp
            break  puts "The reader exits, glad to see you "
          else
            puts "Sorry, I don't find the reader. Try again"
            welcom.self
          end
        end
        puts "You entered as #{@name}"
        represent

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
new_old = questions {"Are you first time there? (Enter Yes or No)-"}
name = questions {"Enter you name-"}
email = questions {"Enter you email-"}
city  = questions {"Enter you city-"}
street = questions {"Enter you street-"}
house = questions {"Enter you house-"}
reader = Reader.new(name, email,city, street, house)

if new_old=="yes" or new_old == "Yes"
  join_new = questions { "Great! Do You want to join? (Enter Yes or No)-"}
    if join_new =="yes" or join_new == "Yes"
      reader.add_new_reader
    else
      abort "Some other time"
      end
  else
  puts "Welcom! Lets check  your information!"
  reader.current_reader
  end
end

def represent
  puts "Lets go! Represent for yor the list of aviable autors"
  autors_list = Autor.new
  orders = Order.new
  autors_list.view_each("2_Autors.json")
  bib_of_book = questions {"Enter bib-number-"}
  books_list = Book.new
  books_list.view_each_by_bib("3_Books.txt",bib_of_book )
  puts "I could tell you about our books"
  h_top_book = questions {"Do you want to know which book is the most readed? (y/n): "}
  orders.hight_top_book  if top_book == "y"
  n_top_book = questions {"Do you want to know  list of the most readed books ? (Enter number) TOP-"}

end
start = questions {"Continue(y/n)- "}
welcom if start == "y"
