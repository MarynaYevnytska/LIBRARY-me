# frozen_string_literal: true

module Validation
  def  validate_emptiness(object)
    raise EmptyStringError if object.to_s.empty?
  end

  def validate_class(object, klass)
    raise WrongClassError unless object.is_a? klass
  end

end
