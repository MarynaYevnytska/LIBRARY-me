# frozen_string_literal: true

module Statistics

  def top_book(set, num = 1)
    sorted = set.group_by(&:book).sort_by { |_book_item, order| -order.count }.first(num)
    sorted.to_h.keys
  end

  def top_reader(set, num = 1)
    sorted = set.group_by(&:reader).sort_by { |_reader_item, order| -order.count }.first(num)
    sorted.to_h.keys
  end

  def readers_the_most_popular_books(set, num = 1)
    books = top_book(set, num)
    set.select { |order| books.include? order.book }.map(&:reader).uniq.count
  end
end
