# frozen_string_literal: true

class Library
  attr_reader :authors, :books, :readers, :orders

  def initialize
    @authors = []
    @books = []
    @readers = []
    @orders = []
    load_db.flatten.each { |entity| add(entity) }
  end

  def add(entity)
    case entity
    when Author then @authors.push(entity)
    when Book then @books.push(entity)
    when Reader then @readers.push(entity)
    when Order then @orders.push(entity)
    else raise UndefinedLibraryEntity
    end
  end
end
