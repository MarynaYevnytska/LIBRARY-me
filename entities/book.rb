# frozen_string_literal: true


class Book
  attr_reader :title, :author


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
