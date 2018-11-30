class Author
  attr_reader :name, :biography

  include Validation
  include Errors

  def initialize(name, biography = '')
    @name = name
    @biography = biography
    validation(@name)
  end

  private

  def validation(name)
    validate_class(name, String)
    validate_emptiness(name)
  end
end
