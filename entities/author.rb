# frozen_string_literal: true

require_relative 'validation.rb'

class Author
  attr_reader :name, :biography

  include Validation

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
