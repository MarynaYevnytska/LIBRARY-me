# frozen_string_literal: true

require_relative './autoload/autoload.rb'
library = Library.new

authors = [Author.new('Sergey Yesenin', 'Happyness'),
           Author.new('Agatha Christie', 'Desert'),
           Author.new('Michael Bulgakov', 'Love'),
           Author.new('Ivan Krilov', 'Freedom'),
           Author.new('Alex Pushkin')]

books = [Book.new('Black man', authors[1]),
         Book.new('About love', authors[1]),
         Book.new('The Murder of Roger Ackroyd', authors[2]),
         Book.new('Heart of a Dog', authors[3]),
         Book.new('Eugene Onegin', authors[4])]

readers = [Reader.new(name: 'Mat', email: 'email@email', city: 'Dnipro', street: 'Street', house: 5),
           Reader.new(name: 'Sat', email: 'mail@mail', city: 'Kiev', street: 'Street', house: 7),
           Reader.new(name: 'Nat', email: 'gmail@gmail', city: 'Lviv', street: 'Street', house: 8),
           Reader.new(name: 'Bat', email: 'freemail@freemail', city: 'city:man', street: 'Street', house: 10),
           Reader.new(name: 'Kat', email: 'freemail@freemail', city: 'Oslo', street: 'Street', house: 11),
           Reader.new(name: 'Dat', email: 'freemail@efreemail', city: 'Tokio', street: 'Street', house: 12)]

orders = [Order.new(books[1], readers[1]),
          Order.new(books[1], readers[2]),
          Order.new(books[1], readers[3]),
          Order.new(books[1], readers[3]),
          Order.new(books[2], readers[3]),
          Order.new(books[3], readers[3]),
          Order.new(books[4], readers[4]),
          Order.new(books[5], readers[5])]

authors.each { |author| library.add(author) }
books.each { |book| library.add(book) }
readers.each { |reader| library.add(reader) }
orders.each { |order| library.add(order) }
library.data_store
library.save_to_store
library.top_book(library.orders)
library.top_reader(library.orders)
library.readers_the_most_popular_books(library.orders)
