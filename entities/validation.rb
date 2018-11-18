# frozen_string_literal: true

module Validation
  def  validate_emptiness(object)
    raise TypeError, 'EMPTY value' if object.to_s.empty?
  end

  def validate_class(object, klass)
    raise TypeError, 'Wrong Data' unless object.is_a? klass
  end

  def validate_instance_of_klass(object, klass_name)
    raise TypeError, 'Wrong Data' unless object.class == klass_name
  end
end
