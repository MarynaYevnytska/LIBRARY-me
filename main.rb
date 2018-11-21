# frozen_string_literal: true

require_relative 'entities/author.rb'
require_relative 'entities/book.rb'
require_relative 'entities/order.rb'
require_relative 'entities/reader.rb'
require_relative 'entities/library.rb'
require_relative 'moduls/validation.rb'
require_relative 'moduls/load.rb'
require_relative 'error/errors.rb'
require 'date'
require 'yaml/store'

include Validation
include Errors
include Storage

library = Library.new

authors = [author1 = Author.new('Sergey Yesenin', 'Happyness'),
           author2 = Author.new('Agatha Christie', 'Desert'),
           author3 = Author.new('Michael Bulgakov', 'Love'),
           author4 = Author.new('Ivan Krilov', 'Freedom'),
           author6 = Author.new('Alex Pushkin')]

books = [book1 = Book.new('Black man', author1),
         book2 = Book.new('About love', author1),
         book3 = Book.new('The Murder of Roger Ackroyd', author2),
         book4 = Book.new('Heart of a Dog', author3),
         book5 = Book.new('Eugene Onegin', author4)]

readers = [reader1 = Reader.new(name: 'Mat', email: 'email@email', city: 'Dnipro', street: 'Street', house: 5),
           reader2 = Reader.new(name: 'Sat', email: 'mail@mail', city: 'Kiev', street: 'Street', house: 7),
           reader3 = Reader.new(name: 'Nat', email: 'gmail@gmail', city: 'Lviv', street: 'Street', house: 8),
           reader4 = Reader.new(name: 'Bat', email: 'freemail@freemail', city: 'city:man', street: 'Street', house: 10),
           reader5 = Reader.new(name: 'Kat', email: 'freemail@freemail', city: 'Oslo', street: 'Street', house: 11),
           reader6 = Reader.new(name: 'Dat', email: 'freemail@efreemail', city: 'Tokio', street: 'Street', house: 12)]

orders = [order1 = Order.new(book1, reader1),
          order3 = Order.new(book1, reader2),
          order4 = Order.new(book1, reader3),
          order5 = Order.new(book1, reader4),
          order6 = Order.new(book2, reader2),
          order7 = Order.new(book3, reader3),
          order8 = Order.new(book4, reader4),
          order9 = Order.new(book5, reader5)]

authors.each { |author| library.add(author) }
books.each { |book| library.add(book) }
readers.each { |reader| library.add(reader) }
orders.each { |order| library.add(order) }
library.save(library.authors)
library.save(library.books)
library.save(library.readers)
library.save(library.orders)
