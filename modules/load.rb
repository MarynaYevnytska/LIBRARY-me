# frozen_string_literal: true

module Storage
  FILE_NAME = 'database/database.yml'
  def save(object)
    File.open(FILE_NAME, 'a') { |file| file.write(YAML.dump(object)) }
  end

  def load_db
    File.open(FILE_NAME) { |f| YAML.load_documents f }
  end
end
