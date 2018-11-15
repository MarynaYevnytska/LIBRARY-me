# frozen_string_literal: true

class Author
  attr_reader :name, :biography

  def initialize(name, biography = '')
    def not_empty
      puts 'Yes' unless name.empty?
    end
    def validate_class(object,clas)
      puts "Yes #{object} is #{clas}" if  object.is_a? clas
    end
    @name = name
    @biography = biography
  end

  def hi_author
    puts "Hi #{@name}"
  end


end
