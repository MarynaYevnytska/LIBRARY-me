class Autor
  attr_reader :name, :bb

    def initialize(name, bb = '')
      @name, @bb = name, bb
    end
    def view_each(file_name)
        puts "File name #{file_name}"
        list = File.open(file_name) {|file| file.readlines}
    end
end
