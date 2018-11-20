# frozen_string_literal: true

module Storage
  FILE_NAME = 'database/database.yml'

  def save(object)
    File.open(FILE_NAME, 'w') { |file| file.write(YAML.dump(object)) }
  end


  private

  def load_db
    list = [Book, Reader, Author, Order, Time]
    YAML.load(File.read(FILE_NAME), list).to_a
  end
end
