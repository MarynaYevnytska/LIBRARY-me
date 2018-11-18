# frozen_string_literal: true

module Validation
  def  validate_emptiness(object)
    raise TypeError, 'EMPTY value' if object.to_s.empty?
  end

  def validate_class(object, klass)
    raise TypeError, 'Wrong Data' unless object.is_a? klass
  end
end
