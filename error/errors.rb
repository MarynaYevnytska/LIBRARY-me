# frozen_string_literal: true

module Errors
  class WrongClassError < StandardError
    def initialize
      super('Wrong class!')
    end
  end

  class EmptyStringError < StandardError
    def initialize
      super('You try to send empty string!')
    end
  end
end
