# frozen_string_literal: true

class Order
  attr_reader :book, :reader, :date

  include Validation

  def initialize(book, reader, date = Time.now)
    @book = book
    @reader = reader
    @date = date
    validation(@book, @reader, @date)
  end

  def validation(book, reader, date)
    validate_instance_of_klass(book, Book)
    validate_instance_of_klass(reader, Reader)
    validate_instance_of_klass(date, Time)
  end
end
