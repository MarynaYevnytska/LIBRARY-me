# frozen_string_literal: true

class Library
  include Enumerable
  attr_reader :authors, :books, :readers, :orders
  def initialize
    @authors = []
    @books = []
    @readers = []
    @orders = []
    load_db
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

  def data_store
    storage = { authors: @authors, books: @books, readers: @readers, orders: @readers }
  end

  def save_to_store
    save(data_store)
  end
end
