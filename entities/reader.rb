

class Reader
  attr_accessor :name, :email, :city, :street, :house
  include Validation
  include Errors

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
    [name, email, city, street].map do |item|
      validate_class(item, String)
      validate_emptiness(item)
    end
    validate_class(house, Integer)
  end
end
