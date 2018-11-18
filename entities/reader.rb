# frozen_string_literal: true

class Reader
  attr_accessor :name, :email, :city, :street, :house

  include Validation

  def initialize(**args)
    @name = args[:name]
    @email = args[:email]
    @city = args[:city]
    @street = args[:street]
    @house = args[:house]
    validation(@name, @email, @city, @street, @house)
  end

  private

  def validation(name, email, city, street, house)
    validate_class(name, String)
    validate_class(email, String)
    validate_class(city, String)
    validate_class(street, String)
    validate_class(house, Integer)
    validate_emptiness(name)
    validate_emptiness(email)
    validate_emptiness(city)
    validate_emptiness(street)
  end
end
