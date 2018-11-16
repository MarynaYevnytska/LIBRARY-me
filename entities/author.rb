# frozen_string_literal: true

class Author
  attr_reader :name, :biography
  def initialize(name, biography = '')
    validation(name, biography)
    @name = name
    @biography = biography
  end

  def not_empty(object)
    puts "Yes #{object}is not empty" unless object.empty?
  end

  def validate_class(object, klass)
    puts "Yes #{object} is #{klass}" if object.is_a? klass
  end

  def validation(*arguments)
    arguments.each do |item|
      validate_class(item, String)
      not_empty(item)
    end
  end
end
