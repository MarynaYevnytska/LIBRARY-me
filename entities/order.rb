# frozen_string_literal: true

class Order
  attr_reader :book, :reader, :date

  def initialize(book, reader, date)
    Validation.not_empty(book, reader, date)
    Validation.egual_string(book, reader)
    Validation.egual_string(date)
    @book = book
    @reader = reader
    @date = date
  end
end
