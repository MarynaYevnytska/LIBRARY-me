# frozen_string_literal: true

class Library
  attr_reader :authors, :books, :readers, :orders

  def initialize
    @authors = []
    @books = []
    @readers = []
    @orders = []
  end

  def add(entity)
    case entity
    when Author
      @authors.push(entity)
    when Book
      @books.push(entity)
    when Reader
      @readers.push(entity)
    when Order
      @orders.push(entity)
    else raise UndefinedLibraryEntity
    end
  end
end
