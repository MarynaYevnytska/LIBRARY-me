class Reader
  attr_accessor :name, :email, :city, :street, :house
  include Validation
  include Errors

  def initialize(name:, email:, city:, street:, house:)
    @name = name
    @email = email
    @city = city
    @street = street
    @house = house
    validate(@name, @email, @city, @street, @house)
  end

  private

  def validate(name, email, city, street, house)
    [name, email, city, street].each do |item|
      validate_class(item, String)
      validate_emptiness(item)
    end
    validate_class(house, Integer)
  end
end
