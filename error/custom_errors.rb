# frozen_string_literal: true

module Custom_errors

  #def custom_errors_empty
       #puts yield
  #end

  def custom_errors_klass(object, klass)
    case object.class == klass
    when klass != String
      puts 'Must be string'
    when klass != Integer
      puts 'Must be number'
    when klass != Author
      puts 'Must be Author'
    when klass != Book
      puts 'Must be Book'
end
  end
end
