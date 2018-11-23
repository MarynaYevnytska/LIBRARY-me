# frozen_string_literal: true

require_relative '../modules/validation.rb'
require_relative '../errors/errors.rb'
class Book
  attr_reader :title, :author

  include Validation
  include Errors

  def initialize(title, author)
    @title = title
    @author = author
    validation(@title, @author)
  end

  private

  def validation(title, author)
    validate_class(title, String)
    validate_emptiness(title)
    validate_class(author, Author)
  end
end
