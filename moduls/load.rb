# frozen_string_literal: true

require 'yaml'

module Storage
  FILE_NAME = 'database/database.yml'
  def save(object)
    File.open(FILE_NAME, 'a') { |file| file.write(YAML.dump(object)) }
  end

  def load_db
    list = File.open(FILE_NAME) { |f| YAML.load_documents f }
  end
end
