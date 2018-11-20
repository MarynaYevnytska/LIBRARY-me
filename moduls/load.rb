# frozen_string_literal: true

module Storage
  FILE_NAME = 'database/database.yml'

  def load
    object = [Author, Book, Reader, Order, Time]
    YAML.safe_load(File.open(FILE_NAME), object) if storage_exist?
  end

  def save(object)
    File.open(FILE_NAME, 'w') { |file| file.write(YAML.dump(object)) }
  end

  def storage_exist?
    File.exist?(FILE_NAME)
  end
  end
