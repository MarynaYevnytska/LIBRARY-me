# frozen_string_literal: true

class Author
  attr_reader :name, :biography

  def initialize(name, biography = '')
    @name = name
    @biography = biography
  end

  def hi_author
    puts "Hy #{@name}"
  end

  def not_empty
    name.empty? unless puts 'Yes'
  end

  def equal_string
    name.class = 'String' if puts 'Yes'
  end

  def equal_number
    name.class = 'Integer' if puts 'Yes'
  end
end
