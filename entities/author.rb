# frozen_string_literal: true

class Author
  attr_reader :name, :biography
  def initialize(name, biography = '')
    validation(name, biography)
    @name = name
    @biography = biography
  end

  def not_empty(object)
    raise if object.to_s.empty?
  rescue RuntimeError
    puts 'This value is so empty'
  end

  def validate_class(object, klass)
    raise unless object.is_a? klass
  rescue RuntimeError
    puts "Type of data #{object} is not valid"
  end

  def validation(*arguments)
    arguments.each do |item|
      validate_class(item, String)
      not_empty(item)
    end
  end
end
