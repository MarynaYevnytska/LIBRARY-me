# frozen_string_literal: true

class Order
  attr_reader :book, :reader, :date

  def initialize(book, reader, date = Time.now)
    @book = book
    @reader = reader
    @date = date
    validation(@book, @reader, @date)
  end

  def validation(book, reader, date)
    validate_class(book, Book)
    validate_class(reader, Reader)
    validate_class(date, Time)
  end
end
