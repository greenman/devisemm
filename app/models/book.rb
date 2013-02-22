class Book 
  include MongoMapper::Document

  key :name
  key :description
  timestamps!
end
