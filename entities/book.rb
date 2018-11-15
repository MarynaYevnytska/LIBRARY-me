# frozen_string_literal: true

class Book
  attr_reader :title, :author

  include Validation

  def initialize(title, author)
    Validation.not_empty(title)
    Validation.egual_string(title)
    @title = title
    @author = author
  end
end
