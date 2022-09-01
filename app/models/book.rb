class Book < ApplicationRecord
  
  belongs_to :user #1:N
  
  validates :title, presence: true
  validates :body, presence: true
  
end
