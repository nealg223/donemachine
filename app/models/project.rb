class Project < ActiveRecord::Base
  
  validates :title, :description, :presence => true
  validates :title,             :uniqueness => true
  
end
