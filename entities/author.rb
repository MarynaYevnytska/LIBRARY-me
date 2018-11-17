# frozen_string_literal: true

class Author
  attr_reader :name, :biography
  def initialize(name, biography = '')
    @name = name
    @biography = biography
    validation(@name, @biography)
  end

  def  validate_emptiness(object)
    raise TypeError, 'EMPTY value' if object.to_s.empty?
  end

  def validate_class(object, klass)
    raise TypeError, 'Wrong Data'  unless object.is_a? klass
  end

  def validation(name,biography)
      validate_class(name, String)
      validate_emptiness(name)
      validate_class(biography, String)
      validate_emptiness(biography)
  end
end
