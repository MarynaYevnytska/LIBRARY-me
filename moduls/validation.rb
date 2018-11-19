# frozen_string_literal: true

module Validation
  def  validate_emptiness(object)
    raise TypeError, 'Value is empty' if object.to_s.empty?
  rescue
    puts "Value musn't be empty!" #custom_errors_empty {"Value musn't be empty!"}
  end

  def validate_class(object, klass)
    raise TypeError, 'Wrong Data' unless object.is_a? klass
  rescue
    custom_errors_klass(object, klass)
  end
end
