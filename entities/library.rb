# frozen_string_literal: true

class Library
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

  def datas_store
    authors = { authors: @authors }
    books = { books: @books }
    readers = { readers: @readers }
    orders = { orders: @readers }
    list_of_entity = [authors, books, readers, orders]
  end

  def save_to_store
    save(datas_store)
  end
end
