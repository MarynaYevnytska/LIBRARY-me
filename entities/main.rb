# frozen_string_literal: true

require_relative 'author.rb'
require_relative 'book.rb'
require_relative 'order.rb'
require_relative 'reader.rb'

names_autor = ["Nic", "Mat", "David", 1, "", ]

names_autor.each do |item|
  author = Author.new"#{item}"
  puts Author.name
  puts author.not_empty
  puts author.validate_class(item,String)
  puts author.validate_class(item,Integer)
end
