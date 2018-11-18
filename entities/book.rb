# frozen_string_literal: true

require_relative 'validation.rb'

class Book
  attr_reader :title, :author

  include Validation

  def initialize(title, author)
    @title = title
    @author = author
    validation(@title, @author)
  end

  private

  def validation(title, author)
    validate_class(title, String)
    validate_emptiness(title)
    validate_instance_of_klass(author, Author)
  end
end
