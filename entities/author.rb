# frozen_string_literal: true

class Author
  attr_reader :name, :biography

  def initialize(name, biography='')
    validation(name, biography)
    @name = name
    @biography = biography
  end
count=0
  def not_empty(item)
      puts "Yes #{item} is not empty" unless item.empty?
    end
  end
  def validate_class(item,klass)
    puts "Yes #{item} is #{klass}" if  item.is_a? klass
  end
  def validation (*arg)
    arg.each do |item|
    validate_class(item,String)
    not_empty(item)
  end
end
