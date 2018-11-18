# frozen_string_literal: true

class Author
  attr_reader :name, :biography

  def initialize(name, biography = '')
    @name = name
    @biography = biography
    validation(@name)
  end

  private

  def validation(name)
    validate_class(name, String)
    validate_emptiness(name)
  end
end
