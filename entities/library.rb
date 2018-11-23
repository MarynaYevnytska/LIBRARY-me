# frozen_string_literal: true
require 'date'
require 'yaml'

require_relative '../moduls/load.rb'
require_relative '../moduls/statistics.rb'
require_relative '../error/errors.rb'

class Library

  include Enumerable
  include Storage
  include Statistics

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
