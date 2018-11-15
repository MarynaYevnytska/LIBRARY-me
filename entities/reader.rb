# frozen_string_literal: true

class Reader
  attr_accessor :name, :email, :city, :street, :house

  include Validation

  def initialize(name, email, city, street, house)
    Validation.not_empty(name, email, city, street, house)
    Validation.egual_string(name, email, city, street)
    Validation.equal_integer(house)
    @name = name
    @email = email
    @city = city
    @street = street
    @house = house
  end
end
