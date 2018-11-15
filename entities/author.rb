# frozen_string_literal: true

require 'validation'
class Author
  attr_reader :name, :biography

  include Validation

  def initialize(name, biography = '')
    @name = name
    @biography = biography
    Validation.egual_string(name)
    Validation.egual_string(name)
  end
end
