# frozen_string_literal: true

require 'validation'
class Author
  attr_reader :name, :biography

  def initialize(name, biography = '')
    @name = name
    @biography = biography
  end
end
