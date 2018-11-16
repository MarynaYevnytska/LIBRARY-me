# frozen_string_literal: true

require_relative 'author.rb'
require_relative 'book.rb'
require_relative 'order.rb'
require_relative 'reader.rb'
count = 0
names_author = ['Nic', 'Mat', 'David', 1, '']
describ_biography = %w[Happyness Desert Love Freedom]
names_author.each do |item|
  author = Author.new"#{item}, #{describ_biography[count]}"
  count +=1
end
