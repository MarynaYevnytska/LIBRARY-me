# frozen_string_literal: true

module Statistica
  # def top_position(set, search_term, naming)
  #   puts set, search_term, search_term.class, naming, naming.class
  # element_id=[]
  #   set.each {|element|element_id.push(element.search_term.object_id)}
  #   puts element_id
  #   quntity_uniq_id=element_id.inject(Hash.new{ 0 }){ |result, i|
  #       result[i] += 1
  #       result
  #   }
  #   puts quntity_uniq_id
  #   top_search_term_id = quntity_uniq_id.sort {|a,b| a[1]<=>b[1]}.reverse[0][0]
  #   puts top_search_term_id
  #   set.each {|element| puts "Top #{search_term} is #{element.search_term.naming}" if top_search_term_id == element.search.object_id}
  # end
  def most_popular_book(set)
    element_id = []
    set.each { |element| element_id.push(element.book.object_id) }
    quntity_uniq_id = element_id.each_with_object(Hash.new { 0 }) do |i, result|
      result[i] += 1
    end
    top_search_term_id = quntity_uniq_id.sort_by { |a| a[1] }.reverse[0][0]
    message = 0
    set.each { |element| message = element.book.title if top_search_term_id == element.book.object_id }
    puts "Top book is #{message}"
  end

  def top_reader(set)
    element_id = []
    set.each { |element| element_id.push(element.reader.object_id) }
    quntity_uniq_id = element_id.each_with_object(Hash.new { 0 })  do |i, result|
      result[i] += 1
    end
    message = 0
    top_search_term_id = quntity_uniq_id.sort_by { |a| a[1] }.reverse[0][0]
    set.each { |element| message = element.reader.name if top_search_term_id == element.reader.object_id }
    puts "Top reader is #{message}"
  end
end
