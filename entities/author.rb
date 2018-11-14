class Author
  attr_reader :name, :bibliographi

    def initialize(name, biography = '')
      @name = name
      @biography = biography
    end
end
