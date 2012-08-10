class Volume < ActiveRecord::Base
  attr_accessible :author, :body, :title
  
  validates :title, :presence => true
  
  searchable do
    text :title, :author, :body
  end
  
end
